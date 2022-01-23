# Reference link: https://devblogs.microsoft.com/powershell-community/how-to-update-or-add-a-registry-key-value-with-powershell/
# Language hex codes / keyboard identifiers: https://docs.microsoft.com/en-us/windows-hardware/manufacture/desktop/windows-language-pack-default-values?view=windows-11
# 
# How to fix language bar & input methods, source: https://superuser.com/questions/957552/how-to-delete-a-keyboard-layout-in-windows-10
# Use regedit to navigate to following registry keys, where you will find there the list of keyboards that are preloaded at boot.
# HKEY_USERS\.DEFAULT\Keyboard Layout\Preload
# HKEY_CURRENT_USER\Keyboard Layout\Preload
# HKEY_USERS\.DEFAULT\Control Panel\International\User Profile
# HKEY_USERS\.DEFAULT\Control Panel\International\User Profile System Backup

# 0x00000409  - US English
# 0x00000407  - German
# 0x00040402  - Bulgarian

# Set variables to indicate value and key to set
# Set US English: 
$RegistryPath = 'HKEY_USERS\.DEFAULT\Keyboard Layout\Preload'
$Name         = '1'
$Value        = '00000409'
New-ItemProperty -Path $RegistryPath -Name $Name -Value $Value -PropertyType DWORD -Force 
# Create the key if it does not exist
If (-NOT (Test-Path $RegistryPath)) {
  New-Item -Path $RegistryPath -Force | Out-Null
}  
# Now set the value
New-ItemProperty -Path $RegistryPath -Name $Name -Value $Value -PropertyType DWORD -Force 
# Set German:
$RegistryPath = 'HKEY_USERS\.DEFAULT\Keyboard Layout\Preload'
$Name         = '2'
$Value        = '00000407'
New-ItemProperty -Path $RegistryPath -Name $Name -Value $Value -PropertyType DWORD -Force 
# Create the key if it does not exist
If (-NOT (Test-Path $RegistryPath)) {
  New-Item -Path $RegistryPath -Force | Out-Null
}  
# Now set the value
New-ItemProperty -Path $RegistryPath -Name $Name -Value $Value -PropertyType DWORD -Force 
# Set Bulgarian:
$RegistryPath = 'HKEY_USERS\.DEFAULT\Keyboard Layout\Preload'
$Name         = '3'
$Value        = '00000402'
# Now set the value
New-ItemProperty -Path $RegistryPath -Name $Name -Value $Value -PropertyType DWORD -Force 
# Create the key if it does not exist
If (-NOT (Test-Path $RegistryPath)) {
  New-Item -Path $RegistryPath -Force | Out-Null
}  
# Now set the value
New-ItemProperty -Path $RegistryPath -Name $Name -Value $Value -PropertyType DWORD -Force 

# Repeat for the rest of the 3 registry paths... 