# Vim alias
Set-Alias gvim 'C:\Program Files\Vim\gvim.exe'
Set-Alias vim 'C:\Program Files\Vim\vim.exe'
Set-Alias vimtutor 'C:\Program Files\Vim\vimtutor.bat'
Set-Alias c 'Clear-Host'
Set-Alias touch 'New-Item'
Set-Alias which 'Get-Command'

# ENV VARIABLES
$env:TERM = 'xterm-256color'
$env:COLORTERM = 'truecolor'
$env:TZ = "Pacific/Honolulu"

# Set Vim mode in powershell
Set-PSReadLineOption -EditMode Vi -ViModeIndicator Cursor -BellStyle None

# Accept the next word
Set-PSReadLineKeyHandler -Chord 'Ctrl+Spacebar' -Function AcceptNextSuggestionWord
#Set-PSReadLineKeyHandler -Chord 'Ctrl+@' -Function AcceptNextSuggestionWord
#Set-PSReadLineKeyHandler -Chord 'Ctrl+Shift+2' -Function AcceptNextSuggestionWord
Remove-PSReadLineKeyHandler Ctrl+v
Set-PSReadLineKeyHandler -Chord Ctrl+v -Function SelfInsert

#Accept all
Set-PSReadLineKeyHandler -Chord 'Ctrl+Enter' -ScriptBlock {
    # Accept the inline suggestion
    [Microsoft.PowerShell.PSConsoleReadLine]::AcceptSuggestion()

    # Invoke the command (same as pressing Enter)
    [Microsoft.PowerShell.PSConsoleReadLine]::AcceptLine()
}

# --- PowerShell history: effectively unlimited ---

# In-session history
$MaximumHistoryCount = 32767

# PSReadLine history settings
Set-PSReadLineOption -MaximumHistoryCount 100000000   # 100M lines
Set-PSReadLineOption -HistorySaveStyle SaveIncrementally
Set-PSReadLineOption -HistoryNoDuplicates:$true

# Optional: custom path (uncomment and set your preferred location)
Set-PSReadLineOption -HistorySavePath "C:\Users\<USER>\ConsoleHost_history.txt"

# Optional: filter out secrets from being saved
Set-PSReadLineOption -AddToHistoryHandler {
    param($line)
    # Skip lines containing common secret patterns
    $patterns = @(
        'password', 'passwd', 'token', 'apikey', 'api_key',
        'secret', 'connectionstring', 'connstring'
    )
    foreach ($p in $patterns) {
        if ($line -match $p) { return $false }
    }
    return $true
}

# --- Microsoft Defender convenience functions & aliases ---

function Get-MpCmdRunPath {
    $platformRoot = Join-Path $env:ProgramData 'Microsoft\Windows Defender\Platform'
    if (Test-Path $platformRoot) {
        # Pick the highest version folder (e.g., 4.18.24090.11-0)
        $latest = Get-ChildItem -Path $platformRoot -Directory |
                  Sort-Object Name -Descending |
                  Select-Object -First 1
        if ($latest) {
            $exe = Join-Path $latest.FullName 'MpCmdRun.exe'
            if (Test-Path $exe) { return $exe }
        }
    }
    # Fallback to the baseline copy
    $fallback = Join-Path $env:ProgramFiles 'Windows Defender\MpCmdRun.exe'
    if (Test-Path $fallback) { return $fallback }
    throw "MpCmdRun.exe not found."
}

# Generic shim: call MpCmdRun.exe with native arguments
function mpcmd {
    & (Get-MpCmdRunPath) @Args
}

# Update signatures quickly
function mpsig {
    & (Get-MpCmdRunPath) -SignatureUpdate
}

# Friendly scan wrapper
function mpscan {
    param(
        [ValidateSet('Quick','Full','Custom')]
        [string]$Type = 'Quick',
        [string]$Path
    )

    switch ($Type) {
        'Quick'  { $scanType = 1 }
        'Full'   { $scanType = 2 }
        'Custom' { $scanType = 3 }
    }

    if ($Type -eq 'Custom' -and -not $Path) {
        throw "Custom scan requires -Path."
    }

    $arguments = @('-Scan', '-ScanType', $scanType)
    if ($Type -eq 'Custom') { $arguments += @('-File', $Path) }

    & (Get-MpCmdRunPath) @args
}

function gitbash {
  .'C:\Program Files\Git\bin\bash.exe' -i -l
}

# Quit
function q {
  exit
}

function ll {
  Get-ChildItem -Path . -Force
}

function rmrf {
  param (
      [string]$Path
      )

    $title = 'Confirm Remove'
    $question = "Removing `'" + $Path +"`'?"
    $choices = '&Yes', '&No'

    $decision = $Host.UI.PromptForChoice($title, $question, $choices, 0)
    if ($decision -eq 0) {
      Remove-Item -Path $Path -Confirm -Recurse -Force
    }
}

function today {
    Get-Date -Format "yyyy-MM-dd"
}

function gs {
  git status
}

function gtc {
  git commit
}

function gtcm {
  param (
      [Parameter(Mandatory=$true, ValueFromRemainingArguments=$true)]
      [string[]] $Message
      )
    git commit -m "$Message"
}

function RestartTeams {
    [CmdletBinding()]
    param()

    Write-Verbose "Stopping Microsoft Teams..."

    $processNames = @(
        "ms-teams",
        "Teams"
    )

    foreach ($name in $processNames) {
        Get-Process -Name $name -ErrorAction SilentlyContinue |
            Stop-Process -Force
    }

    # Wait up to 10 seconds for Teams to exit
    $timeout = (Get-Date).AddSeconds(10)

    do {
        $running = Get-Process -Name $processNames -ErrorAction SilentlyContinue
        if (-not $running) { break }

        Start-Sleep -Milliseconds 500
    } while ((Get-Date) -lt $timeout)

    $teamsExe = Join-Path $env:LOCALAPPDATA "Microsoft\WindowsApps\ms-teams.exe"

    if (-not (Test-Path $teamsExe)) {
        Write-Verbose "Standard path not found. Searching..."

        $teamsExe = Get-ChildItem "$env:LOCALAPPDATA" `
            -Filter "ms-teams.exe" `
            -Recurse `
            -ErrorAction SilentlyContinue |
            Select-Object -ExpandProperty FullName -First 1
    }

    if (-not $teamsExe) {
        throw "Could not locate ms-teams.exe."
    }

    Write-Verbose "Starting Teams: $teamsExe"

    Start-Process $teamsExe

    Write-Verbose "Teams restarted."
}
