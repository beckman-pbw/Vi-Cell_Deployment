'=-=-=- '=-=-=- '=-=-=- '=-=-=- '=-=-=-
' Install Config
'  - Installs config file if it is missing:
'    - Uses template if original did not exist
'    ' Uses backup if original existed

Dim FSO
Dim settingsFile 
Dim settingsFileBackup
Dim settingsFileTemplate

settingsFile = "\Instrument\Software\XMLDB\ConfigurationSettings.xml"
settingsFileBackup = "\Instrument\Software\XMLDB\ConfigurationSettings.xml.backup"
settingsFileTemplate = "\Instrument\Software\XMLDB\ConfigurationSettings.xml.template"

Set FSO = CreateObject("Scripting.FileSystemObject")


if FSO.FileExists(settingsFileBackup)  then
    FSO.CopyFile settingsFileBackup, settingsFile, true
elseif not FSO.FileExists(settingsFile) and FSO.FileExists(settingsFileTemplate) then
    FSO.CopyFile settingsFileTemplate, settingsFile, false
end if
