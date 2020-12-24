#Written by Philip Kleinberg



#Location of the files you want to pull info from
$FileLocation = "G:\Teamspeak\qtwebengine_locales"

#actual command to generate table of names and file sizes
$information = Get-ChildItem -Recurse -Path $FileLocation

#Destination of Spreadsheet
$Destination = 'C:\Users\Public\Documents\1st Output.csv'

#Actual command to generate array of data
$information | Format-Table -Property "Name","Size" | Out-File $Destination
