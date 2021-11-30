GET-WMIOBJECT win32_diskdrive | Where { $_.InterfaceType –eq ‘USB’ }

