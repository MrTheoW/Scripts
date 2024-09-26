(ls) | foreach {
    $oldfilename = $_.name                                                                    # Grabs the filename of the current file.
    $FileExtention = "."+($oldfilename).Split(".")[-1]                                        # Grabs the extention from the oldfilename variable.
    $newfilename = $(([System.IO.Path]::GetRandomFileName()).split(".")[0])+$FileExtention    # Create a randomized filename, add the new extention and put it in the "newfilename" variable.
    mv $_ $($newfilename)                                                                     # Rename the file by moving the old filename to the new one. 
    Write-Host "$oldfilename > $newfilename"                                                  # Outputs what it has done.
}
