
# based on blog.platzdasch.de 
# we use this script to exclude folders on a sharepoint Search Server to solve the 
# cpu issue with windows defender

Add-MpPreference -ExclusionPath "C:\Program Files\Common Files\Microsoft Shared\Web Server Extensions"
Add-MpPreference -ExclusionPath "C:\Program Files\Common Files\Microsoft Shared\Web Server Extensions\16"
Add-MpPreference -ExclusionPath "C:\Program Files\Common Files\Microsoft Shared\Web Server Extensions\16\Logs"
Add-MpPreference -ExclusionPath "C:\Program Files\Microsoft Office Servers\16.0\Data\Office Server\Applications"
Add-MpPreference -ExclusionPath "C:\Windows\Microsoft.NET\Framework64\v4.0.30319\Temporary ASP.NET Files"
Add-MpPreference -ExclusionPath "C:\Windows\Microsoft.NET\Framework64\v4.0.30319\Config"

# just change the user Name of SearchService... in our case it's SP_Crawl
Add-MpPreference -ExclusionPath "C:\Users\SP_Crawl\AppData\Local\Temp\WebTempDir"


Add-MpPreference -ExclusionPath "C:\WINDOWS\System32\LogFiles"
Add-MpPreference -ExclusionPath "C:\Windows\Syswow64\LogFiles"

# just change the user Name of SearchService... in our case it's SP_Crawl
Add-MpPreference -ExclusionPath "C:\Users\SP_Crawl\AppData\Local\Temp"

Add-MpPreference -ExclusionPath "C:\Users\Default\AppData\Local\Temp"
Add-MpPreference -ExclusionPath "C:\inetpub\wwwroot\wss\VirtualDirectories" 
Add-MpPreference -ExclusionPath "C:\inetpub\temp\IIS Temporary Compressed Files" 
