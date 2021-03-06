function CdSrc () {
    Set-Location -Path "C:\src\"
}

function CdRij () {
    Set-Location -Path "C:\src\rijnijssel\"
}

function Merge-Cuesheet {
    param ($Cue, $Flac)
    metaflac --set-tag-from-file="CUESHEET=${Cue}" --import-cuesheet-from="${Cue}" "${Flac}"
}

Set-Alias -Name src -Value CdSrc
Set-Alias -Name rij -Value CdRij

Set-PoshPrompt -Theme ~/.oh-my-posh.json
Set-PSReadLineKeyHandler -Key 'Ctrl+d' -Function DeleteCharOrExit
