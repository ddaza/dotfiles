-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
    local lazyrepo = "https://github.com/folke/lazy.nvim.git"
    local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
    if vim.v.shell_error ~= 0 then
        vim.api.nvim_echo(
            {
                { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
                { out,                            "WarningMsg" },
                { "\nPress any key to exit..." }
            },
            true,
            {}
        )
        vim.fn.getchar()
        os.exit(1)
    end
end
vim.opt.rtp:prepend(lazypath)

-- Make sure to setup `mapleader` and `maplocalleader` before
-- loading lazy.nvim so that mappings are correct.
-- This is also a good place to setup other settings (vim.opt)
--vim.g.mapleader = " "
--vim.g.maplocalleader = "\\"

-- Setup lazy.nvim
require("lazy").setup(
    {
        spec = {
            -- import your plugins
            {
                "dense-analysis/ale",
                config = function()
                    -- Configuration goes here.
                    local g = vim.g

                    g.ale_ruby_rubocop_auto_correct_all = 1

                    g.ale_linters = {
                        lua = { "luacheck", "cspell" },
                        go = { "gobuild", "govet", "golangci-lint" },
                        python = { "ruff", "black" }
                    }

                    g.ale_fixers = {
                        go = { "gopls" },
                        lua = { "luafmt" },
                        javascript = { "prettier" },
                        python = { "ruff", "black" }
                    }

                    --g.ale_go_gopls_executable = vim.fn.expand("~/go/bin/gopls.exe")

                    g.ale_fix_on_save = 1
                    g.ale_hover_to_preview = 1
                    g.ale_floating_window_border = { "│", "─", "╭", "╮", "╯", "╰", "│", "─" }
                    g.ale_hover_to_floating_preview = 1
                    g.ale_detail_to_floating_preview = 0
                    g.ale_set_loclist = 1
                    g.ale_completion_enabled = 0
                end
            },
            {
                "neovim/nvim-lspconfig",
                dependencies = {
                    "saghen/blink.cmp"
                },
                config = function()
                    local capabilities = require("blink.cmp").get_lsp_capabilities()

                    vim.lsp.inlay_hint.enable(not vim.lsp.inlay_hint.is_enabled())

                    vim.keymap.set("n", "<leader>ki", vim.diagnostic.open_float)

                    vim.api.nvim_create_autocmd(
                        "BufWritePost",
                        {
                            callback = function()
                                vim.diagnostic.setloclist({ open = false })
                            end
                        }
                    )
                    vim.diagnostic.config(
                        {
                            virtual_text = {
                                source = "if_many"
                            },
                            signs = true,
                            underline = true,
                            update_in_insert = false,
                            float = {
                                border = "rounded",
                                source = true
                            }
                        }
                    )

                    local servers = {
                        gopls = {
                            -- Enable semantic tokens for advanced type highlighting
                            semanticTokens = true,
                            -- Optional: Extra gopls analysis adjustments
                            analyses = {
                                unusedparams = true
                            },
                            staticcheck = true,
                            hints = {
                                -- Show variable types on assignment. Helpful for learning Go types.
                                assignVariableTypes = true,
                                -- Show constant values inline.
                                constantValues = true,
                                -- Show parameter names in calls.
                                parameterNames = true,
                                functionTypeParameters = true,
                                rangeVariableTypes = true
                            }
                        },
                        ts_ls = {},
                        pyright = {},
                        zls = {},
                        powershell_es = {
                            bundle_path = "~/PowerShellEditorServices/"
                        },
                        lua_ls = {
                            settings = {
                                Lua = {
                                    diagnostics = {
                                        globals = { "vim" }
                                    },
                                    workspace = {
                                        checkThirdParty = false,
                                        library = vim.api.nvim_get_runtime_file("", true)
                                    }
                                }
                            }
                        }
                    }

                    for name, opts in pairs(servers) do
                        opts.capabilities = capabilities

                        vim.lsp.config(name, opts)
                        vim.lsp.enable(name)
                    end
                end
            },
            {
                "saghen/blink.cmp",
                dependencies = {
                    "saghen/blink.lib",
                    -- optional: provides snippets for the snippet source
                    "rafamadriz/friendly-snippets",
                    "neovim/nvim-lspconfig"
                },
                build = function()
                    -- build the fuzzy matcher, optionally add a timeout to `pwait(timeout_ms)`
                    -- you can use `gb` in `:Lazy` to rebuild the plugin as needed
                    require("blink.cmp").build():pwait()
                end,
                ---@module 'blink.cmp'
                ---@type blink.cmp.Config
                opts = {
                    -- 'default' (recommended) for mappings similar to built-in completions (C-y to accept)
                    -- 'super-tab' for mappings similar to vscode (tab to accept)
                    -- 'enter' for enter to accept
                    -- 'none' for no mappings
                    --
                    -- All presets have the following mappings:
                    -- C-space: Open menu or open docs if already open
                    -- C-n/C-p or Up/Down: Select next/previous item
                    -- C-e: Hide menu
                    -- C-k: Toggle signature help (if signature.enabled = true)
                    --
                    -- See :h blink-cmp-config-keymap for defining your own keymap
                    keymap = {
                        preset = "enter",
                        -- Chained commands
                        ["<S-Tab>"] = { "select_prev", "fallback" },
                        ["<Tab>"] = { "select_next", "fallback" }
                    },
                    -- (Default) Only show the documentation popup when manually triggered
                    completion = {
                        documentation = { auto_show = false },
                        menu = {
                            draw = {
                                columns = {
                                    { "label",    "label_description", gap = 1 },
                                    { "kind_icon" },
                                    { "kind" }
                                },
                                components = {
                                    kind_icon = {
                                        text = function(ctx)
                                            if ctx.source_name ~= "Path" then
                                                return require("lspkind").symbol_map[ctx.kind] or "" .. ctx.icon_gap
                                            end

                                            local is_unknown_type =
                                                vim.tbl_contains(
                                                    { "link", "socket", "fifo", "char", "block", "unknown" },
                                                    ctx.item.data.type
                                                )
                                            local mini_icon, _ =
                                                require("mini.icons").get(
                                                    is_unknown_type and "os" or ctx.item.data.type,
                                                    is_unknown_type and "" or ctx.label
                                                )

                                            return (mini_icon or ctx.kind_icon) .. ctx.icon_gap
                                        end,
                                        highlight = function(ctx)
                                            if ctx.source_name ~= "Path" then
                                                return ctx.kind_hl
                                            end

                                            local is_unknown_type =
                                                vim.tbl_contains(
                                                    { "link", "socket", "fifo", "char", "block", "unknown" },
                                                    ctx.item.data.type
                                                )
                                            local mini_icon, mini_hl =
                                                require("mini.icons").get(
                                                    is_unknown_type and "os" or ctx.item.data.type,
                                                    is_unknown_type and "" or ctx.label
                                                )
                                            return mini_icon ~= nil and mini_hl or ctx.kind_hl
                                        end
                                    }
                                }
                            }
                        }
                    },
                    -- (Default) list of enabled providers defined so that you can extend it
                    -- elsewhere in your config, without redefining it, due to `opts_extend`
                    sources = { default = { "lsp", "path", "snippets", "buffer" } },
                    -- (Default) Rust fuzzy matcher for typo resistance and significantly better performance
                    -- You may use a lua implementation instead by using `implementation = "lua"`
                    -- See the fuzzy documentation for more information
                    fuzzy = { implementation = "lua" }
                },
                opts_extend = { "sources.default" }
            },
            { "rafamadriz/friendly-snippets" },
            { "onsails/lspkind.nvim" },
            { "nvim-mini/mini.icons",        version = "*" },
            {
                "scottmckendry/cyberdream.nvim",
                lazy = false,
                priority = 1000,
            }

            -- { import = "plugins" },
        },
        -- Configure any other settings here. See the documentation for more details.
        -- colorscheme that will be used when installing plugins.
        install = { colorscheme = { "habamax" } },
        -- automatically check for plugin updates
        checker = { enabled = true }
    }
)
