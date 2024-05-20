; ViCellOfflineAnalysis.nsi
;
; This script has uninstall support and installs start menu shortcuts.
;
; It will install ViCellOfflineAnalysis.nsi into a directory that the user selects,
; with the default set to 'C:\Instrument'

;--------------------------------

!define ProdFamily "ViCell"                         # for compatibility with the UI installer...
!define AppName "${ProdFamily} Offline Analysis"
!define AppInstallerCaption "${AppName} Installer"
!define OfflineAppPartNum "${project.build.offline_partnumber}"
!define InstrumentAppPartNum "${project.build.partnumber}"
!define AppVersion "${parsedVersion.majorVersion}.${parsedVersion.minorVersion}.${parsedVersion.incrementalVersion}.${timestamp}"
!define ShortName "Offline Analysis"
!define CompanyName "Beckman Coulter"
!define InstrumentNameKey "Vi-CELL BLU"
!define InstrumentName "ViCell BLU"                 # for compatibility with the UI installer
!define UIName "ViCellBLU_UI"                       # for compatibility with the UI installer...
!define HelpURL "http://www.BeckmanCoulter/..."     # "Support Information" link
!define UpdateURL "http://www.BeckmanCoulter/..."   # "Product Updates" link
!define AboutURL "http://www.BeckmanCoulter/..."    # "Publisher" link
!define SoftwareRegKey "Software\\${CompanyName}\\${InstrumentNameKey}\\${ShortName}"
!define UninstRegKey "Software\Microsoft\Windows\CurrentVersion\Uninstall\\${CompanyName}\\${InstrumentNameKey}\\${ShortName}"
!define 7ZipSoftwareRegKey "Software\7-Zip"
!define UninstallProgName "Uninstall.exe"
!define DefaultInstallDir "C:\Instrument"

!include "MUI.nsh"
!include "Sections.nsh"
!include "LogicLib.nsh"
!include "FileFunc.nsh"
 

;--------------------------------

; The displayed name of the installer - shown in the installer title bar
Name "${AppName}"
Caption "${AppInstallerCaption}"

; The installer file name to write
OutFile "${OfflineAppPartNum}-v${AppVersion}.exe" 

; The default base software installation directory
; may be changed by the operator when supported (future)
InstallDir ${DefaultInstallDir}
; Registry key to check for directory (if you install again, it will overwrite the old one automatically)
InstallDirRegKey HKLM "${SoftwareRegKey}" "Install_Dir"

Icon "dependencies\Hawkeye\Installer\Carousel.ico"

InstallButtonText "Next >"

ShowInstDetails show

BrandingText "Beckman Coulter Life Sciences"
AllowRootDirInstall false
InstProgressFlags smooth
AutoCloseWindow false

; Request application privileges
RequestExecutionLevel admin


;--------------------------------
; Pages
; MUI - used for 3rd party software install
!insertmacro MUI_PAGE_COMPONENTS
!insertmacro MUI_PAGE_DIRECTORY
!insertmacro MUI_PAGE_INSTFILES
!insertmacro MUI_PAGE_FINISH
!insertmacro MUI_UNPAGE_CONFIRM
!insertmacro MUI_UNPAGE_INSTFILES

;--------------------------------
;Languages
!insertmacro MUI_LANGUAGE "English"
 
;--------------------------------
;Description
LangString DESC_ViCellAppFiles ${LANG_ENGLISH} "Vi-CELL Offline Analysis Application files copy"

;--------------------------------
;Language Strings
LangString TEXT_7ZIP_TITLE ${LANG_ENGLISH} "7-Zip Application"
LangString TEXT_7ZIP_SUBTITLE ${LANG_ENGLISH} "Installation"
LangString TEXT_PRODVER_TITLE ${LANG_ENGLISH} "Installed version of ${AppName}"
LangString TEXT_PRODVER_SUBTITLE ${LANG_ENGLISH} "Installation cancelled"

!macro VerifyUserIsAdmin
UserInfo::GetAccountType
pop $0
${If} $0 != "admin" ;Require admin rights
    messageBox mb_iconstop "Administrator rights required!"
    setErrorLevel 740 ;ERROR_ELEVATION_REQUIRED
    quit
${EndIf}
!macroend


Function .onInit
    SetShellVarContext all
    !insertmacro VerifyUserIsAdmin
FunctionEnd


; The stuff to install
Section "-Installation of ${AppName}"

    Call SpaceCheck

    IfSilent 0 +4 
        SetDetailsView hide
        SetAutoClose true
        SetDetailsPrint none

    DetailPrint "Please wait... installing the Offline Analysis package"

    Call Build_App_Folders

    Call Build_Install_Folders

    SetOutPath $INSTDIR\SW_Install
    File /r dependencies\Hawkeye\Installer\SW_Install\*.*

    ; Set output path to the Tools sub-folders for each tool
    SetOutPath $INSTDIR\Tools\fciv
    File dependencies\hashkeytool\fciv.exe

    SetOutPath $INSTDIR\Tools\Vimba
    File dependencies\Vimba_Win64.msi
    
    ; Set output path to the installation directory.
    SetOutPath $INSTDIR
    File ${InstrumentAppPartNum}-v${AppVersion}.exe
    File hash.xml

    ; NOTE: the '/D=$INSTDIR' install directory specifier MUST be the last thing on the invocation line!!!
    StrCpy $1 "$INSTDIR\\${InstrumentAppPartNum}-v${AppVersion}.exe -o /D=$INSTDIR"
    IfSilent 0 +2 
        StrCpy $1 "$INSTDIR\\${InstrumentAppPartNum}-v${AppVersion}.exe -o /S /D=$INSTDIR"

    ; first, decompress the normal installer files into the expected location
    ExecWait $1

    Var /GLOBAL Sdk_Install     ; preserve the state of the sdk install check

    StrCpy $Sdk_Install "FALSE"

    ${GetParameters} $R0
    StrLen $0 $R0
    IntCmp $0 0 do_app_install do_app_install
    ${GetOptions} $R0 "-a" $R1
    IfErrors do_app_install

    StrCpy $Sdk_Install "TRUE"

    ; Set output path to the Tools folder, and copy the automation-enabled DB schema file variants
    SetOutPath $INSTDIR\Tools
;    File /oname=$INSTDIR\Tools\DBCreate.sql dependencies\Hawkeye\Installer\DBCreate.sql.sdk
;    File /oname=$INSTDIR\Tools\SchemaAlter.sql dependencies\Hawkeye\Installer\SchemaAlter.sql.sdk

    CreateDirectory "$INSTDIR\Tools\SDK"
    CreateDirectory "$INSTDIR\Tools\SDK\ViCellBLU_dotNet_API"
    CreateDirectory "$INSTDIR\Tools\SDK\ViCellBLUOpcUa_Example_Client_Application"
    CreateDirectory "$INSTDIR\Tools\SDK\ViCellBLUOpcUa_Example_Client_Application\src"

do_app_install:
    StrCpy $2 SW_SHOWNORMAL
    IfSilent 0 +2
        StrCpy $2 SW_HIDE

    ExecShellWait "open" "$INSTDIR\InstallViCell.bat" $2

    CopyFiles /FILESONLY /SILENT "$INSTDIR\Software\environment.config.sim" "$INSTDIR\Software\UIConfiguration\environment.config"
    Delete "$INSTDIR\InstallViCell.bat"
    Delete "$INSTDIR\bin\*.*"

    ; Write the installation path into the registry
    WriteRegStr HKLM "${SoftwareRegKey}" "Install_Dir" "$INSTDIR"

    WriteUninstaller "${UninstallProgName}"

    # set the output path to set the working directory for the startup shortcut
    SetOutPath $INSTDIR\Software

    # this file is required for offline analysis, but not for the instrument
    File dependencies\Hawkeye\import_data.bat

    CreateDirectory "$SMPROGRAMS\\${CompanyName}"
    CreateDirectory "$SMPROGRAMS\\${CompanyName}\\${ProdFamily}"
    CreateShortcut  "$SMPROGRAMS\\${CompanyName}\\${ProdFamily}\\${AppName}.lnk" "$INSTDIR\Software\\${UIName}.exe" "" "$INSTDIR\Carousel.ico" 0
    CreateShortcut  "$SMPROGRAMS\\${CompanyName}\\${ProdFamily}\Uninstall.lnk" "$INSTDIR\\${UninstallProgName}" "" "$INSTDIR\Carousel.ico" 0

    ; remove the instrument startup link if present in the all users category
    Delete "$SMPROGRAMS\\${ProdFamily}\\${InstrumentName}.lnk"
    Delete "$SMPROGRAMS\\${ProdFamily}"
    ; change to the current user context to ensure deletion of the instrument startup link
    SetShellVarContext current
    Delete "$SMPROGRAMS\\${ProdFamily}\\${InstrumentName}.lnk"
    Delete "$SMPROGRAMS\\${ProdFamily}"

    SetShellVarContext all

    ; Write the uninstall keys for Windows
    WriteRegStr HKLM "${UninstRegKey}" "DisplayName" "${AppName}"
    WriteRegStr HKLM "${UninstRegKey}" "UninstallString" "$INSTDIR\\${UninstallProgName}"
    WriteRegDWORD HKLM "${UninstRegKey}" "NoModify" 1
    WriteRegDWORD HKLM "${UninstRegKey}" "NoRepair" 1

    Delete "$INSTDIR\\${InstrumentAppPartNum}-v${AppVersion}.exe"
    Delete "$INSTDIR\hash.xml"

    RMDir /r $INSTDIR\SW_Install

    StrCmp $Sdk_Install "TRUE" 0 install_cleanup            ; cmpstr cmpval jmp_if_equal jmp_if_not_equal

    SetOutPath $INSTDIR\Tools\SDK\ViCellBLUOpcUa_Example_Client_Application
    File /r dependencies\OpcUaServer\ViCellOpcUaClient\*.*

    SetOutPath $INSTDIR\Tools\SDK\ViCellBLU_dotNet_API
    File /r dependencies\OpcUaServer\ViCellBLU_dotNET\*.*

    IfFileExists "$INSTDIR\Software\XMLDB\ConfigurationSettings.xml" check_sdk_config
    IfFileExists "$INSTDIR\Software\XMLDB\ConfigurationSettings.xml.template" 0 config_error1
        CopyFiles /FILESONLY /SILENT "$INSTDIR\Software\XMLDB\ConfigurationSettings.xml.template" "$INSTDIR\Software\XMLDB\ConfigurationSettings.xml"

    Goto check_sdk_config

config_error1:
    IfSilent check_sdk_config
        MessageBox MB_OK "Missing configuration settings XML file."

check_sdk_config:
    IfFileExists "$INSTDIR\Software\ui.config.sdk" 0 config_error2
        CopyFiles /FILESONLY /SILENT "$INSTDIR\Software\ui.config.sdk" "$INSTDIR\Software\UIConfiguration\ui.config"

    Goto install_cleanup

config_error2:
    IfSilent install_cleanup2
        MessageBox MB_OK "Missing SDK configuration settings file."

    Goto install_cleanup2

install_cleanup:
    IfFileExists "$INSTDIR\Software\ui.config.sdk" 0 install_cleanup2
        Delete "$INSTDIR\Software\ui.config.sdk"

install_cleanup2:
    IfFileExists "$INSTDIR\Software\ui.config" 0 install_done
        Delete "$INSTDIR\Software\ui.config"

install_done:
    IfFileExists "$INSTDIR\reboot.bat" 0 +2
        ExecShellWait "open" "$INSTDIR\reboot.bat"

SectionEnd

;--------------------------------
; 3rd party software installation 
; The location of this section in this file is important
;
Section /o "7-Zip" 7ZipSection

    IfSilent 0 +2
        SetDetailsPrint none

    DetailPrint "Please wait... installing the 7-zip utility"

    AddSize 1409
    SetOutPath $INSTDIR

    StrCpy $3 SW_SHOWNORMAL
    IfSilent 0 +2
        StrCpy $3 SW_HIDE

    ExecShellWait "open" "$INSTDIR\Tools\7-zip\7z1806-x64.exe" $3

SectionEnd

LangString DESC_7ZipSection ${LANG_ENGLISH} "7-Zip file compression tool"
!insertmacro MUI_FUNCTION_DESCRIPTION_BEGIN
  !insertmacro MUI_DESCRIPTION_TEXT ${7ZipSection} $(DESC_7ZipSection)
!insertmacro MUI_FUNCTION_DESCRIPTION_END


;--------------------------------
; Uninstaller

Function un.onInit
    SetShellVarContext all
 
    #Verify the uninstaller - last chance to back out
    MessageBox MB_OKCANCEL "Permanantly remove ${AppName}?" IDOK next
        Abort
  next:
    !insertmacro VerifyUserIsAdmin
FunctionEnd
 
Section "un.Uninstall"

    IfFileExists "$INSTDIR\ViCellBLU_UI.msi" remove_ui cleanup

  remove_ui:
    ExecWait "msiexec.exe /x $INSTDIR\ViCellBLU_UI.msi /passive"
    Delete "$INSTDIR\ViCellBLU_UI.msi"

  cleanup:
    Delete "$INSTDIR\Software\*.*"
    Call un.Remove_App_Folders
    
    ; Remove registry keys
    DeleteRegKey HKLM "${UninstRegKey}"
    DeleteRegKey HKLM "${SoftwareRegKey}"

    ; Remove files and uninstaller
    Delete $INSTDIR\\${UninstallProgName}

    ; Remove shortcuts, if any; done discretely, not recursively
    Delete "$SMPROGRAMS\\${CompanyName}\\${ProdFamily}\*.*"
    ; Remove ViCell start menu folder
    RMDir "$SMPROGRAMS\\${CompanyName}\\${ProdFamily}"
    IfFileExists "$SMPROGRAMS\\${CompanyName}\*.*" clean_dir
    ; if empty, Remove BeckmanCoulter start menu folder
    RMDir "$SMPROGRAMS\\${CompanyName}"

  clean_dir:
    Delete $INSTDIR\\*.*

SectionEnd


; Check for the minimum required disk-free space; quit if not sufficient
; NOTE that the application free-space requirement is greater than the installer-determined free-space requirement!
Function SpaceCheck

    ${GetRoot} $INSTDIR $R0
    ${DriveSpace} "$R0" "/D=F /S=M" $0
    IfErrors 0 do_space_check
        MessageBox MB_OK "Error determining free space on installation drive '$INSTDIR'.$\nInstallation will abort."
        goto space_check_error

do_space_check:
    ; check for at least 5 GB remaining free space to do the install and leave some space (for data) after...
    IntCmp $0 5000 space_check_ok 0 space_check_ok		; cmpval cmptgt jmp_if_equal jmp_if_less jmp_if_more

    MessageBox MB_OK "Not enough free space for installation on '$INSTDIR'.$\nInstallation will abort."

space_check_error:
    IfFileExists "$INSTDIR\reboot.bat" 0 space_check_err_cleanup
        Delete "$INSTDIR\reboot.bat"

space_check_err_cleanup:
    IfFileExists "$INSTDIR\Software\ui.config.sdk" 0 space_check_err_cleanup2
        Delete "$INSTDIR\Software\ui.config.sdk"

space_check_err_cleanup2:
    IfFileExists "$INSTDIR\Software\ui.config" 0 space_check_err_exit
        Delete "$INSTDIR\Software\ui.config"

space_check_err_exit:
	quit
	
space_check_ok:

FunctionEnd


; Create the expected folder structure
Function Build_App_Folders

    CreateDirectory "$INSTDIR"
    CreateDirectory "$INSTDIR\bin"
    CreateDirectory "$INSTDIR\bin\Archive"
    CreateDirectory "$INSTDIR\Config"
    CreateDirectory "$INSTDIR\Export"
    CreateDirectory "$INSTDIR\ExternalImages"
    CreateDirectory "$INSTDIR\Logs"
    CreateDirectory "$INSTDIR\OpcUaServer"
    CreateDirectory "$INSTDIR\OpcUaServer\Model"
    CreateDirectory "$INSTDIR\OpcUaServer\Schema"
    CreateDirectory "$INSTDIR\ResultsData"
    CreateDirectory "$INSTDIR\Software"
    CreateDirectory "$INSTDIR\Software\UIConfiguration"
    CreateDirectory "$INSTDIR\Tools"
    CreateDirectory "$INSTDIR\Tools\.NET_4.8"
    CreateDirectory "$INSTDIR\Tools\7-zip"
    CreateDirectory "$INSTDIR\Tools\Vimba"
    CreateDirectory "$INSTDIR\Tools\EDB"
    CreateDirectory "$INSTDIR\Tools\fciv"
    CreateDirectory "$INSTDIR\Tools\vc"
    CreateDirectory "$INSTDIR\Watchdog"

FunctionEnd

Function Build_Install_Folders

    CreateDirectory "$INSTDIR\SW_Install"
    CreateDirectory "$INSTDIR\SW_Install\bin"
    CreateDirectory "$INSTDIR\SW_Install\Config"
    CreateDirectory "$INSTDIR\SW_Install\Software"
    CreateDirectory "$INSTDIR\SW_Install\Software\Resources"
    CreateDirectory "$INSTDIR\SW_Install\UI_Installer"

FunctionEnd


; remove the created folder structure
Function un.Remove_App_Folders

    RMDir /r "$INSTDIR\Watchdog"
    RMDir /r "$INSTDIR\Tools"
    RMDir /r "$INSTDIR\Software"
    RMDir /r "$INSTDIR\ResultsData"
    RMDir /r "$INSTDIR\OpcUaServer"
    RMDir /r "$INSTDIR\Logs"
    RMDir /r "$INSTDIR\ExternalImages"
    RMDir /r "$INSTDIR\Export"
    RMDir /r "$INSTDIR\Config"
    RMDir /r "$INSTDIR\bin"
  
FunctionEnd

