
#Prompt ---------------------------------

# Icons
Import-Module Terminal-Icons
# Load prompt config
oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH\kevin.omp.json" | Invoke-Expression

# PSReadLine
Set-PSReadLineOption -EditMode Emacs
Set-PSReadLineOption -BellStyle None
Set-PSReadLineKeyHandler -Chord 'Ctrl+d' -Function DeleteChar
Set-PSReadLineOption -PredictionSource History

# Fzf
Import-Module PSFzf
Set-PsFzfOption -PSReadlineChordProvider 'Ctrl+f' -PSReadlineChordReverseHistory 'Ctrl+r'

# Alias ---------------------------------
# p.\OneDrive\Documentos\PowerShell\
# Set-Alias home 'C:\Users\Kevin\OneDrive\Documentos\PowerShell\'
Set-Alias v nvim
Set-Alias g git
Set-Alias ll ls

# Utilities
function which ($command) {
	Get-Command -Name $command -ErrorAction SilentlyContinue |
		Select-Object -ExpandProperty Path -ErrorAction SilentlyContinue
}
