@echo off

:: Variables
set "targetDir=C:\Windows\SystemApps\MicrosoftWindows.Client.CBS_cw5n1h2txyewy\Cortana.UI\cache\SVLocal\Desktop"
set "jsFile=%targetDir%\CleanSearch.js"
set "htmlFile=%targetDir%\2.html"

:: Step 1: Create 'CleanSearch.js' with specific content
(
echo sa_config.enableTwoPanesZI = false;
echo sa_config.enabledDataSources = ["DFLS","CUSE","QSCH","WWE","PP","IBA","ST","FEH","Web","OSTMA","QS","IFF","MPVD","MDOC","MFOL","MPHO","MVID","MMUS","ODC","MRU","MPP","MST","MFF","MRS","CG","PT","SSUE","SSUC","SSEE","SSEC","TS","ANA"];
) > "%jsFile%"

:: Set owner to administrators
takeown /F "%jsFile%" /A

:: Remove inheritance and grant read and execute permissions only to specified entries for CleanSearch.js
icacls "%jsFile%" /inheritance:r
icacls "%jsFile%" /grant:r SYSTEM:(RX) *S-1-5-32-544:(RX) "Users":(RX) "ALL APPLICATION PACKAGES":(RX) "ALL RESTRICTED APPLICATION PACKAGES":(RX)

:: Step 2: Change owner of '2.html' to administrators
takeown /F "%htmlFile%" /A

:: Remove inheritance and grant full control to administrators and read and execute to others including TrustedInstaller
icacls "%htmlFile%" /inheritance:r
icacls "%htmlFile%" /grant:r *S-1-5-32-544:(F) SYSTEM:(RX) "Authenticated Users":(RX) "NT SERVICE\TrustedInstaller":(RX)

:: Step 3: Add JavaScript reference to '2.html'
echo.>> "%htmlFile%"
echo ^<script type="text/javascript" src="ms-appx-web:///Cortana.UI/cache/SVLocal/Desktop/CleanSearch.js"^>^</script^> >> "%htmlFile%"

:: Step 4: Set administrators' permissions to read and execute only for '2.html'
icacls "%htmlFile%" /grant:r *S-1-5-32-544:(RX)

echo Script execution completed.
