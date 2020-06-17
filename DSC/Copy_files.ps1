# create configuration
 
Set-Location "C:\DSC\"
 
Configuration CopyFolderExample
{
    Node "localhost"
    {
        File DirectoryCopy
        {
            Ensure = "Present" # Present, Absent.
            Type = "Directory" # File, Directory
            Recurse = $true # $true, $false
            SourcePath = "c:\DSC\test.txt"
            DestinationPath = "C:\DSC\destination\test.txt"
        }
 
    }
}
 
# create mof
CopyFolderExample
 
# load configuration from mof
Start-DscConfiguration -Path CopyFolderExample -ComputerName localhost -Wait -Verbose -Force
 
# check configuration
Get-DscConfiguration
