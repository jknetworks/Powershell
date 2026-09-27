#TOP FIVE

```powershell
echo %LOGONSERVER%
```powershell

```powershell
nltest /dsgetdc:YOURDOMAIN.LOCAL
```powershell

```powershell
nltest /sc_query:YOURDOMAIN.LOCAL
```powershell

```powershell
Test-ComputerSecureChannel -Verbose
```powershell

```powershell
gpupdate /force
```powershell


#FULL LIST

```powershell
echo %LOGONSERVER%
```powershell

```powershell
nltest /dsgetdc:YOURDOMAIN.LOCAL
```powershell

```powershell
Test-ComputerSecureChannel -Verbose
```powershell

```powershell
nltest /sc_query:YOURDOMAIN.LOCAL
```powershell

```powershell
nltest /dsregdns
```powershell

```powershell
nltest /dclist:YOURDOMAIN.LOCAL
```powershell

```powershell
nslookup YOURDOMAIN.LOCAL
```powershell

```powershell
nslookup YOUR-DC-NAME
```powershell

```powershell
nslookup -type=SRV _ldap._tcp.dc._msdcs.YOURDOMAIN.LOCAL
```powershell

```powershell
w32tm /query /status
```powershell

```powershell
w32tm /query /source
```powershell

```powershell
w32tm /stripchart /computer:YOUR-DC-NAME /dataonly /samples:5
```powershell

```powershell
gpresult /r
```powershell

```powershell
gpresult /h C:\Temp\GPReport.html
```powershell

```powershell
gpupdate /force
```powershell

