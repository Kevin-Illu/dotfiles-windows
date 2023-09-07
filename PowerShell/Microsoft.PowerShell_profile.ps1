#  ----- Colorscheme -----------
$theme = "everforest"

# themes that convinated whit nord theme
# catppuccin
# sim-web
# hotstick.minimal
# pure
# zash

# light themes:
# rudolfs-light remk capr4n

# Icons
Import-Module Terminal-Icons
# Load prompt config
oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH\$theme.omp.json" | Invoke-Expression

# PSReadLine
Import-Module PSReadline
Set-PSReadLineOption -EditMode Emacs
Set-PSReadLineOption -BellStyle None
Set-PSReadLineKeyHandler -Chord 'Ctrl+d' -Function DeleteChar
Set-PSReadLineOption -PredictionSource History
# Set-PSReadLineOption -PredictionViewStyle ListView

# Fzf
Import-Module PSFzf
Set-PsFzfOption -PSReadlineChordProvider 'Ctrl+f' -PSReadlineChordReverseHistory 'Ctrl+r'


# Set-PSReadLineOption

# Alias ---------------------------------
Set-Alias v nvim
Set-Alias g git
Set-Alias ll ls
Set-Alias python3 py
Set-Alias e explorer
Set-Alias touch New-Item

# Utilities
function which ($command) {
  Get-Command -Name $command -ErrorAction SilentlyContinue |
    Select-Object -ExpandProperty Path -ErrorAction SilentlyContinue
}

