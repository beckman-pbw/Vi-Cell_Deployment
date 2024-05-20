;--------------------------------

!define ProdFamily "ViCell"                         # for compatibility with the UI installer...
!define AppName "${ProdFamily} Instrument Application"
!define AppInstallerCaption "${AppName} Installer extraction"
!define InstrumentAppPartNum "${project.build.partnumber}"
!define AppVersion "${parsedVersion.majorVersion}.${parsedVersion.minorVersion}.${parsedVersion.incrementalVersion}.${timestamp}"
!define DefaultInstallDir "C:\Instrument"

!include "MUI.nsh"
!include "Sections.nsh"
!include "LogicLib.nsh"
!include "FileFunc.nsh"


;--------------------------------

; The displayed name of the installer - shown in the installer title bar
Name "${AppName}"
Caption "${AppInstallerCaption}"

; The file to write
OutFile "${InstrumentAppPartNum}-v${AppVersion}.exe"

; The default installation directory
; NSIS appears to need a default drive in the install dir...
InstallDir ${DefaultInstallDir}
InstallButtonText "Next >"
BrandingText "Beckman Coulter Life Sciences"

;  Try to keep message under 70 characters wide or else they may not display correctly in the dialog
;----------------------------------- 1        1         2         3         4         5         6         7         8
;                                             0         0         0         0         0         0         0         0
!define InstallAbortMsg "Installation will now abort."
!define InstallProceedMsg "Installation will now continue."
!define IfuDataHelpMsg "Refer to the User's manual for data management help."
!define DriveFreeSpaceErrMsg "Error determining free space on installation drive"
!define InstallFreeSpaceFailMsg "Not enough free space for installation on"
!define UpgradeFreeSpaceErrMsg "Error determining data space required for the upgrade data conversion."
!define UpgradeFreeSpaceFailMsg "Not enough free space for data conversion on"
!define PleaseDeleteDataMsg "Please delete some data before performing the upgrade install."
!define SystemSpaceUsageMsg "System disk free space indicates some cleanup may be necessary."
!define SystemSpaceCleanupMsg "Consider Deleting some data or exports, or performing a system file cleanup."
!define CheckingConvertDataSizeMsg "Checking the amount of data to be converted..."


; Request application privileges for Windows Vista
RequestExecutionLevel admin

;--------------------------------
; Pages
;--------------------------------
;Languages

;--------------------------------


; The stuff to install
Section "-Installation of ${AppName}"

  SetDetailsView show

  DetailPrint "Please wait... installing the $(AppName) package"

  Call SpaceCheck

  Call Build_Instrument_Folders

  Call Build_Install_Folders

  SetOutPath $INSTDIR\SW_Install
  File /r dependencies\Hawkeye\Installer\SW_Install\*.*

  ; Set output path to the Tools sub-folders for each tool
  SetOutPath $INSTDIR\Tools\.NET_4.8
  File dependencies\ndp48-x86-x64-allos-enu.exe

  SetOutPath $INSTDIR\Tools\7-zip
  File dependencies\7z1806-x64.exe

  SetOutPath $INSTDIR\Tools\VC
  File dependencies\VC_redist14.25.28508-x64.exe

  SetOutPath $INSTDIR\Tools\EDB
  File dependencies\edb_psqlodbc.exe
  File dependencies\postgresql-10.20-2-windows-x64.exe
  File dependencies\Hawkeye\Installer\pgAdmin4.lnk

  SetOutPath $INSTDIR\Tools
  File dependencies\Hawkeye\Installer\DBCreate.sql
  File dependencies\Hawkeye\Installer\SchemaAlter.sql
  File dependencies\Hawkeye\Installer\FinishInstall.bat
  File dependencies\Hawkeye\Installer\LogoutUser.bat
  File dependencies\Hawkeye\Installer\5b7582701ef966127c7b828b225f082c08a4e610d2af4ed20d7ab49cd7261a6d.cer
  File dependencies\Hawkeye\Installer\681c5a009d210131b0329ffbf95bc062c4f7380f1edf70e84d32ccad1b4fab5a.cer
  File "dependencies\Hawkeye\Installer\BeckmanConnect Certificate.cer"
  File "dependencies\Hawkeye\Installer\Load ViCell Software.lnk"
  File dependencies\Hawkeye\Installer\UTF8.reg

  SetOutPath $INSTDIR\SW_Install\Software
  File dependencies\Hawkeye\VimbaC.dll
  File dependencies\Hawkeye\VimbaCPP.dll
  File dependencies\Hawkeye\Installer\SW_Install\UI_Installer\*.*
  File dependencies\Hawkeye\BackgroundUniformityCriteriaModel.dll
  File dependencies\Hawkeye\Basler.Pylon.dll
  File dependencies\Hawkeye\C06001_ViCell_FLR_Reagent_Pak.bin
  File dependencies\Hawkeye\C06002_ViCell_FLR_Reagent_Pak.bin
  File dependencies\Hawkeye\C06019_ViCell_BLU_Reagent_Pak.bin
  File dependencies\Hawkeye\CamBF_0.epng
  File dependencies\Hawkeye\CamBF_1.epng
  File dependencies\Hawkeye\CamBF_2.epng
  File dependencies\Hawkeye\CamBF_3.epng
  File dependencies\Hawkeye\CamBF_4.epng
  File dependencies\Hawkeye\CamBF_5.epng
  File dependencies\Hawkeye\CamBF_6.epng
  File dependencies\Hawkeye\CamBF_7.epng
  File dependencies\Hawkeye\ftbusui.dll
  File dependencies\Hawkeye\ftcserco.dll
  File dependencies\Hawkeye\ftd2xx.dll
  File dependencies\Hawkeye\ftlang.dll
  File dependencies\Hawkeye\ftserui2.dll
  File dependencies\Hawkeye\GCBase_MD_VC141_v3_1_Basler_pylon.dll
  File dependencies\Hawkeye\GenApi_MD_VC141_v3_1_Basler_pylon.dll
  File dependencies\Hawkeye\HawkeyeCore.dll 
  File dependencies\Hawkeye\DBif.dll 
  File dependencies\Hawkeye\HawkeyeDataAccess.dll
  File dependencies\Hawkeye\activeDirectoryGroups.dll 
;  File dependencies\Hawkeye\AUCred.dll 
  File dependencies\Hawkeye\log4cpp_MD_VC141_v3_1_Basler_pylon.dll
  File dependencies\Hawkeye\Log_MD_VC141_v3_1_Basler_pylon.dll
  File dependencies\Hawkeye\MathParser_MD_VC141_v3_1_Basler_pylon.dll
  File dependencies\Hawkeye\NodeMapData_MD_VC141_v3_1_Basler_pylon.dll
  File dependencies\Hawkeye\opencv_core249.dll
  File dependencies\Hawkeye\opencv_highgui249.dll
  File dependencies\Hawkeye\opencv_imgproc249.dll
  File dependencies\Hawkeye\opencv_objdetect249.dll
  File dependencies\Hawkeye\opencv_video249.dll
  File dependencies\Hawkeye\passcode.bin
  File dependencies\Hawkeye\PylonBase_v6_3.dll
  File dependencies\Hawkeye\PylonC_v6_3.dll
  File dependencies\Hawkeye\PylonGUI_v6_3.dll
  File dependencies\Hawkeye\PylonUsb_v6_3_TL.dll
  File dependencies\Hawkeye\PylonUtility_v6_3.dll
  File dependencies\Hawkeye\uxapi_v13.dll
  File dependencies\Hawkeye\uxtopapi_v6_3.dll
  File dependencies\Hawkeye\XmlParser_MD_VC141_v3_1_Basler_pylon.dll
  File dependencies\lib\*.dll
  File dependencies\Hawkeye\import_data.bat
  File dependencies\Hawkeye\DataImporter.exe

  SetOutPath $INSTDIR\SW_Install\Software\Resources
  File /r dependencies\Hawkeye\Resources\*.*

  SetOutPath $INSTDIR\SW_Install\Config
  File dependencies\Hawkeye\DataImporter.einfo
  File dependencies\Hawkeye\MotorControl.einfo

  SetOutPath $INSTDIR
  ; these files (dependencies\Hawkeye\...) come from HawkeyeApplicationSource repo and are pulled down with mvn package
  File dependencies\Hawkeye\Installer\InstallViCellBLU.bat
  File dependencies\Hawkeye\Installer\Carousel.ico
  File dependencies\Hawkeye\Installer\ViCellSplashScreen.jpg
  File dependencies\Hawkeye\ApplicationSource.manifest.txt
  File dependencies\lib\Algorithms.manifest.txt
  File dependencies\ScoutUI\UserInterface.manifest.txt
  File dependencies\Firmware\Firmware.manifest.txt
  Rename $INSTDIR\InstallViCellBLU.bat $INSTDIR\InstallViCell.bat

  SetOutPath $INSTDIR\SW_Install\bin
  File Firmware\Application\*.bin
  File Firmware\Application\*.txt

  SetOutPath $INSTDIR\SW_Install\UI_Installer
  File /r "ViCellBLU_UI.msi"
SectionEnd ; end the section


;  Check for the minimum required disk-free space for the installation process; quit if not sufficient
;  If converting from what appears to be a 1.2.43 system (a system with the '\Instrument\ResultsData\ResultBinaries' folder),
;  check for adequate space to perform the data conversion import into the database.
;  NOTE that the application free-space requirement is greater than the installer-determined free-space requirement!
Function SpaceCheck
  Var /GLOBAL DriveFreeGB

  ${GetRoot} $INSTDIR $R0
  ${DriveSpace} "$R0" "/D=F /S=G" $DriveFreeGB
  IfErrors 0 install_space_check
;    MessageBox MB_OK "Error determining free space on installation drive '$INSTDIR'.$\nInstallation will now abort."
    MessageBox MB_OK|MB_ICONEXCLAMATION|MB_ICONSTOP "${DriveFreeSpaceErrMsg} '$INSTDIR'.$\n$\n${InstallAbortMsg}"
    goto error_cleanup

install_space_check:
  ;  Check for at least 5 GB remaining free space to do the install and leave some space (for data) after...
  IntCmp $DriveFreeGB 5 install_space_ok 0 install_space_ok         ; cmpval cmptgt jmp_if_equal jmp_if_less jmp_if_more

;  MessageBox MB_OK "Not enough free space for installation on '$INSTDIR'.$\nInstallation will now abort."
  MessageBox MB_OK|MB_ICONEXCLAMATION|MB_ICONSTOP "${InstallFreeSpaceFailMsg} '$INSTDIR'.$\n$\n${InstallAbortMsg}"
  goto error_cleanup

install_space_ok:
  IntCmp $DriveFreeGB 260 drive_space_check 0 space_check_ok        ; cmpval cmptgt jmp_if_equal jmp_if_less jmp_if_more


drive_space_check:
  ;  Check for disk free space below warning level
  IntCmp $DriveFreeGB 200 space_check_ok 0 space_check_ok           ; cmpval cmptgt jmp_if_equal jmp_if_less jmp_if_more

;  MessageBox MB_OK "System disk free space indicates some cleanup may be necessary.$\n$\nConsider Deleting some data or exports, or performing a system file cleanup.$\n$\nInstallation will now continue."
  MessageBox MB_OK|MB_ICONINFORMATION "${SystemSpaceUsageMsg}$\n$\n${SystemSpaceCleanupMsg}$\n$\n${IfuDataHelpMsg}$\n$\n${InstallProceedMsg}"
  goto space_check_ok

error_cleanup:
  IfFileExists "$INSTDIR\reboot.bat" 0 error_cleanup2
    Delete "$INSTDIR\reboot.bat"

error_cleanup2:
  IfFileExists "$INSTDIR\Software\ui.config.sdk" 0 error_cleanup3
    Delete "$INSTDIR\Software\ui.config.sdk"

error_cleanup3:
  IfFileExists "$INSTDIR\Software\ui.config" 0 error_exit
    Delete "$INSTDIR\Software\ui.config"

error_exit:
  quit

space_check_ok:

FunctionEnd


; Create the expected folder structure
Function Build_Instrument_Folders

    CreateDirectory "$INSTDIR"
    CreateDirectory "$INSTDIR\bin"
    CreateDirectory "$INSTDIR\bin\Archive"
    CreateDirectory "$INSTDIR\Config"
    CreateDirectory "$INSTDIR\Export"
    CreateDirectory "$INSTDIR\ExternalImages"
    CreateDirectory "$INSTDIR\Licenses"
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
    CreateDirectory "$INSTDIR\Tools\Microsoft"
    CreateDirectory "$INSTDIR\Tools\Microsoft\Patches"
    CreateDirectory "$INSTDIR\Tools\Microsoft\Patches\Applied"
    CreateDirectory "$INSTDIR\Tools\vc"
    CreateDirectory "$INSTDIR\Tools\VI-CELL_BLU_Connector"
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