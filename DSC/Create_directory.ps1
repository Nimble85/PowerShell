
# create configuration
 
Set-Location "C:\DSC\"

Configuration FileDemo {
    Node EPUADNIW0063 {
        File FileDemo {
            Type = 'Directory'
            DestinationPath = 'C:\DSC\TestUser3'
            Ensure = "Present"
        }
    }
}
 
FileDemo
