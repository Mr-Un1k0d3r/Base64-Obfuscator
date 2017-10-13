# Base64-Obfuscator
Simple PowerShell Base64 encoder to avoid detection of your malicious payload

# Usage 

Should work pretty much everywhere except @danielhbohannon system since his Get-Random return arbitrary value. \o/
```
PS> import-module .\Obfuscator.ps1; Base64-Obfuscator -Data "U3VwZXIgTWFsaWNpb3VzIENvYmFsdCBTdHJpa2UgQmFzZTY0IG9uZWxpbmVy"
Encoded Base64 Output
===========================================================

$WhEY = [Text.Encoding]::ASCII.GetString(([Text.Encoding]::ASCII.GetBytes("QgUmZzF2dTBHapJpxWbyVmZ0YTIu9GFWTsNWagV3UwIXZmYvFCdsN3bpVEIz") | Sort-Object { Get-Random -SetSeed 817481231 })); $HlriAZojTKF = [Text.Encoding]::ASCII.GetString([Convert]::FromBase64String($WhEY)); IEX $HlriAZojTKF
```

# Credit
Mr.Un1k0d3r RingZer0 Team 
