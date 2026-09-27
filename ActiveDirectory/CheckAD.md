#TOP FIVE

echo %LOGONSERVER%

nltest /dsgetdc:YOURDOMAIN.LOCAL

nltest /sc_query:YOURDOMAIN.LOCAL

Test-ComputerSecureChannel -Verbose

gpupdate /force

#FULL LIST

gpupdate /force

nltest /dsgetdc:YOURDOMAIN.LOCAL

Test-ComputerSecureChannel -Verbose

nltest /sc_query:YOURDOMAIN.LOCAL

nltest /dsregdns

nltest /dclist:YOURDOMAIN.LOCAL

nslookup YOURDOMAIN.LOCAL

nslookup YOUR-DC-NAME

nslookup -type=SRV _ldap._tcp.dc._msdcs.YOURDOMAIN.LOCAL

w32tm /query /status

w32tm /query /source

w32tm /stripchart /computer:YOUR-DC-NAME /dataonly /samples:5

gpresult /r

gpresult /h C:\Temp\GPReport.html

gpupdate /force


