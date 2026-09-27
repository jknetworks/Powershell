#TOP FIVE

```powershell
whoami /fqdn
```

```powershell
nltest /dsgetdc:YOURDOMAIN.LOCAL
```

```powershell
nltest /sc_query:YOURDOMAIN.LOCAL
```

```powershell
Test-ComputerSecureChannel -Verbose
```

```powershell
gpupdate /force
```


#FULL LIST

```powershell
echo %LOGONSERVER%
```

```powershell
nltest /dsgetdc:YOURDOMAIN.LOCAL
```

```powershell
Test-ComputerSecureChannel -Verbose
```

```powershell
nltest /sc_query:YOURDOMAIN.LOCAL
```

```powershell
nltest /dsregdns
```

```powershell
nltest /dclist:YOURDOMAIN.LOCAL
```

```powershell
nslookup YOURDOMAIN.LOCAL
```

```powershell
nslookup YOUR-DC-NAME
```

```powershell
nslookup -type=SRV _ldap._tcp.dc._msdcs.YOURDOMAIN.LOCAL
```

```powershell
w32tm /query /status
```

```powershell
w32tm /query /source
```

```powershell
w32tm /stripchart /computer:YOUR-DC-NAME /dataonly /samples:5
```

```powershell
gpresult /r
```

```powershell
gpresult /h C:\Temp\GPReport.html
```

```powershell
gpupdate /force
```

