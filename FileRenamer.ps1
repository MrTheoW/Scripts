(ls) | foreach {
    $oldfilename = $_.name
    $FileExtention = "."+($oldfilename).Split(".")[-1]
    $newfilename = $(([System.IO.Path]::GetRandomFileName()).split(".")[0])+$FileExtention
    mv $_ $($newfilename)
    Write-Host "$oldfilename > $newfilename"
}
