function Base64-Obfuscator {
    # Author: Mr.Un1k0d3r RingZer0 Team
    [CmdletBinding()]
    Param (
		[Parameter(Position = 0, Mandatory = $True, ValueFromPipeline = $True)]
		[string]$Data
	)
	
	
	PROCESS {
		$Seed = Get-Random
		$MixedBase64 = [Text.Encoding]::ASCII.GetString(([Text.Encoding]::ASCII.GetBytes($Data) | Sort-Object { Get-Random -SetSeed $Seed }))

		$Var1 = -Join ((65..90) + (97..122) | Get-Random -Count ((1..12) | Get-Random) | %{[char]$_})
		$Var2 = -Join ((65..90) + (97..122) | Get-Random -Count ((1..12) | Get-Random) | %{[char]$_})
		
		Write-Output "Encoded Base64 Output`n===========================================================`n"
		Write-Output "`$$($Var1) = [Text.Encoding]::ASCII.GetString(([Text.Encoding]::ASCII.GetBytes('"$($MixedBase64)"') | Sort-Object { Get-Random -SetSeed $($Seed) })); `$$($Var2) = [Text.Encoding]::ASCII.GetString([Convert]::FromBase64String(`$$($Var1))); IEX `$$($Var2)"
	}
}
