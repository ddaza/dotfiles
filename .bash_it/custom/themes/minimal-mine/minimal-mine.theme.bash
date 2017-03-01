#!/usr/bin/env bash

SCM_THEME_PROMPT_PREFIX="${cyan}(${green}"
SCM_THEME_PROMPT_SUFFIX="${cyan})"
SCM_THEME_PROMPT_DIRTY=" ${red}✗"
SCM_THEME_PROMPT_CLEAN=" ${green}✓"

prompt() {
  PS1="$(scm_prompt_info)${reset_color} ${blue}\W ${bold_purple}λ${reset_color}\[$(tput sgr0)\] "
}

safe_append_prompt_command prompt
