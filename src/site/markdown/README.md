Hawkeye Deployment
==================

### v1.2.43
* Added patch for installation process to protect ConfigurationSettings.xml file against unexpected removal
* No change to UX or Backend.

### v1.2.42
* Moved to v1.2.31 of frontend.  See ux release notes for details

### v1.2.41
* Added patch for upgrade process from v1.0.23 -> 1.2.  This patch migrates the ConfigurationSettings.xml file to a valid format for v1.2.

### v1.2.40
* Changed installer to have the ability to upgrade from a former version.
* Changed the installer to protect the XMLDB/ConfigurationSettings.xml file
* Moving to v1.2.17 of the backend.  This version of the backend does not run the application uninstall.

### v1.2.39
* Move to v1.2.29 of frontend.  See ux release notes for details
* adding hash key text file to deployment package content
* In order to ensure that new .rdlc files are always installed, changed the installer to associate the .rdlcs files with the main executable so that whenever the version number changes for the .exe, the .rdlc files are also installed.  Without this, the .rdlc files would not be installed if they had been changed - and they are changed when users select various options for reports.

### v1.2.38
* Move to v1.2.28 of frontend.  See ux release notes for details

### v1.2.37
* Move to v1.2.27 of frontend.  See ux release notes for details

### v1.2.36
* Move to v1.2.16 of backend.  See backend release notes for details

### v1.2.35
* Move to v1.2.26 of frontend.  See ux release notes for details

### v1.2.34
* Move to v1.2.15 of backend.  See backend release notes for details

### v1.2.32, v1.2.33
* Move to v1.2.25 of frontend.  See ux release notes for details
* Move to v1.2.14 of backend.  See backend release notes for details

### v1.2.31
* Move to v1.2.24 of frontend.  See ux release notes for details

### v1.2.30
* Move to v1.2.23 of frontend.  See ux release notes for details

### v1.2.29
* Move to v1.2.22 of frontend.  See ux release notes for details

### v1.2.28
* Move to v1.2.21 of frontend.  See ux release notes for details
* Move to v1.2.13 of backend.  See backend release notes for details

### v1.2.27
* Move to v1.2.20 of frontend.  See ux release notes for details

### v1.2.26
* Move to v1.2.18 of frontend.  See ux release notes for details

### v1.2.25
* Ignore - Bad build

### v1.2.24
* Move to v1.2.17 of frontend.  See ux release notes for details

### v1.2.23
* Move to v1.2.16 of frontend.  See ux release notes for details
* Move to v1.2.11 of backend.  See backend release notes for details

### v1.2.22
* Move to v1.2.15 of frontend.  See ux release notes for details

### v1.2.21
* Ignore - Bad build

### v1.2.20
* Move to v1.2.13 of frontend.  See ux release notes for details

### v1.2.19
* Move to v1.2.12 of frontend.  See ux release notes for details

### v1.2.18
* Ignore - Bad build

### v1.2.17
* Move to v1.2.10 of backend.  See backend release notes for details

### v1.2.16
* Move to v1.2.9 of backend.  See backend release notes for details

### v1.2.15
* Move to v1.2.8 of backend.  See backend release notes for details
* Move to v1.2.11 of frontend.  See ux release notes for details

### v1.2.14
* Move to v1.2.7 of backend.  See backend release notes for details
* Move to v1.2.10 of frontend.  See ux release notes for details

### v1.2.13
* Move to v1.2.6 of backend.  See backend release notes for details

### v1.2.12
* Move to v1.2.9 of frontend.  See ux release notes for details

### v1.2.11
* Move to v1.2.8 of frontend.  See ux release notes for details
* Move to v1.2.5 of backend.  See backend release notes for details

### v1.2.10
* Move to v1.2.7 of frontend.  See ux release notes for details

### v1.2.9
* Move to v1.2.6 of frontend.  See ux release notes for details

### v1.2.8
* Move to v1.2.5 of frontend.  See ux release notes for details
* Move to v1.2.4 of backend.  See backend release notes for details

### v1.2.7
* Bad build.  Ignore this.

### v1.2.6
* Bad build.  Ignore this.

### v1.2.5
* Move to v1.2.4 of frontend.  See ux release notes for details
* Move to v1.2.3 of backend.  See backend release notes for details

### v1.2.4
* Move to v1.2.3 of frontend.  See ux release notes for details

### v1.2.3
* Move to v1.2.2 of backend.  See backend release notes for details

### v1.2.2
* Move to v1.2.2 of frontend.  See ux release notes for details
* Move to v1.2.1 of backend.  See backend release notes for details

### v1.2.1
* Installer is now drive-independent and is not tied to C:
* Move to v1.2.1 of frontend.  See ux release notes for details

### v1.2.0
* Move to v1.2.0 of frontend.  See ux release notes for details
* Move to v1.2.0 of backend.  See backend release notes for details

### v1.1.49
* Move to v1.1.46 of frontend.  See ux release notes for details
* Move to v1.1.8 of backend.  See backend release notes for details

### v1.1.44
* Move to v1.1.41 of frontend.  See ux release notes for details
* Move to v1.1.6 of backend.  See backend release notes for details

### v1.1.43
* Move to v1.1.40 of frontend.  See ux release notes for details

### v1.1.42
* Move to v1.1.39 of frontend.  See ux release notes for details
* Move to v1.1.5 of backend.  See backend release notes for details

### v1.1.39
* Added an installer for fonts.

### v1.1.15
* Added import_data.bat to the offline package dependencies
* Corrected start menu shortcut in offline installer;
* corrected duplicated install pages in offline installer;
* Changes to frontend.  See ux release notes for details

### v1.1.14
* Fixed problems with offline installer

### v1.1.13
* Changes to frontend.  See ux release notes for details

### v1.1.12
* Added installer for offline simulator

### v1.0.0
* PC3527-3121 - Build Instructions - catch-all
* PC3527-1722 - Review Firmware Development Plan
* PC3527-3311 - Unable to edit the user details from Admin-User screen and getting error as Failed to modify the user
* PC3527-3293 - Concentration slope: details in instrument status report
* PC3527-1646 - Build Instructions - OS Image
* PC3527-3185 - For skipped sample no Skip status receiving and   message in Message hub not displaying as Cell typeSkipped at Postion#).
* PC3527-3177 - Cell Type / Reanalysis does not pass the correct setting for Decluster
* PC3527-3174 - Play , pause abort not working, issue in UI
* PC3527-3115 - Application shuts down if nightly clean fails on expired reagent pack
* PC3527-3281 - Concentration slope does not allow user to accept it
* PC3527-3137 - Software Verification tasks - Source Code Verification Pre-work
* PC3527-3208 - TOO - 21 CFR 11
* PC3527-774 - RFID Design Update
* PC3527-3211 - TOO - Data Processing Pipeline
* PC3527-3207 - TOO - Security
* PC3527-3205 - TOO - RFID Layout
* PC3527-1533 - Scan and remove the data on the disk which is not linked to Metadata
* PC3527-3178 - GetWorkQueueStatus() should show error message box for HawkeyeError other than eSuccess
* PC3527-3256 - Crash while saving reanalysis with legacy data on
* PC3527-3220 - Nth image calculation for export
* PC3527-3218 - Export instrument data: Backend issues
* PC3527-3312 - Crash to desktop
* PC3527-3296 - IsServiceEnable = true code is unreachable.
* PC3527-3152 - Repeated attempts to login with bad credentials must not be allowed
* PC3527-3238 - Application Crash When Reagent Pack Reaches 0 Uses
* PC3527-2982 - Reanalyzing using same parameters as original parameters gives different result
* PC3527-3282 - Change the minimum limit for images in a cell type to 10
* PC3527-3289 - After importing the queue File Exported success message shows in yellow color in Message hub.
* PC3527-3278 - In cell type report the columns for Viable spot brightness and Viable spot area values are interchanged
* PC3527-3271 - Review Screen Save Path Incorrect
* PC3527-3270 - User with sufficient privilege (Service user) can remove stored data 
* PC3527-3061 - On executing sample without plate registration Reagent status:eOK error is appearing.
* PC3527-3095 - Create a clean version of the UI build for release install package
* PC3527-3290 - Grey level histogram is not plotting In Binary image view.
* PC3527-3285 - Update ReportCommon enums to line up with backend
* PC3527-3200 - Review static code analysis and recommend mitigation where needed
* PC3527-3120 - Theory of Operations documents
* PC3527-3212 - TOO - Concentration Factor Calculation
* PC3527-3196 - Application not responding when user clicks on any screen during any operation
* PC3527-3252 - Annotation between Run Results and Enlarged Image Not Identical
* PC3527-3266 - Application hang when switching security ON to OFF and entered the wrong password for Admin user credentials pop up window
* PC3527-3253 - Cell type does not show its cell type as selected in queue creation
* PC3527-3099 - Cell type for Quality Control must not be editable
* PC3527-3157 - Audit logs not generated for Cell type analysis parameter modifications and Admin -- User list changes
* PC3527-3030 - Audit Logs: Not generating audit events or generating unreadable description 
* PC3527-3028 - Audit Logs: No description for the audit events
* PC3527-3258 - Application Crashing when Camera disconnects during Sample processing
* PC3527-3286 - Add audit log events for  SetUserInactivityTimeout and SetUserPasswordExpiration
* PC3527-3263 - Signature icon shows in enable mode when no signatures configured in settings --security .
* PC3527-3202 - User Interface : Failed to export sample Data message appears with red color
* PC3527-3160 - Cannot load WQ with QC.
* PC3527-3249 - In Set focus and Dust reference Expand icon for Final image shows in disabled mode..
* PC3527-3262 - In Run result report, in Signature section TIme format (hh:mm:ss) is missing.
* PC3527-3257 - Verification Test : Create warning and fatal encrypted config files for verification test
* PC3527-3261 - Verification Test : create a config file with an expired reagent pack
* PC3527-3250 - Complete run report is not showing service user samples On selecting All .
* PC3527-3234 - Nth image parameter shows in Enable mode for service user in Advanced settings.
* PC3527-3231 - Remove the ability to delete a quality control
* PC3527-3125 - Logs button in instrument status while doing motor registration
* PC3527-2542 - Security will get turn OFF automatically (Without any password) when user closed the security popup window.
* PC3527-55 - Program Tree - OS Image
* PC3527-3225 - Application closing when we import any other cfg file like Kloehn.cfg file.
* PC3527-3216 - Backend Adjustments to handle user lock-out
* PC3527-3199 - Investigation of stage timing variance in backend code during sample execution
* PC3527-3206 - TOO - RFID Dataflow
* PC3527-3232 - Update IFU for offline analysis use
* PC3527-3260 - With Security Off users cell types are not displayed for the user
* PC3527-3239 - silent user no  cell type are displaying in default bar
* PC3527-3254 - Add Nunit to Scout
* PC3527-3217 - Export instrument data: UI issues
* PC3527-3127 - Unable to open the Run result print preview when selected all the check box options (Graph options and 1st annotated image)
* PC3527-3237 - Change Fit To Window to Full Width Image
* PC3527-3107 - Issues on graphs while running sample
* PC3527-3133 - Comment note is not displaying below of comment.
* PC3527-3247 - Disable hamburger when queue is paused
* PC3527-3246 - No support for multi language for Scout v1.0
* PC3527-3251 - Process slow during concentration slope due to image processing
* PC3527-3230 - Normal User Cannot Run Samples
* PC3527-3184 - Observed Fluidics - Syringe Pump - Pump controller: Hardware error when resumed sample running from Pause state
* PC3527-11 - Security Timeout (was Git issue #300)
* PC3527-3235 - Export Feature Does Not Export Images
* PC3527-3236 - Import Configuration Does Not Add All Users
* PC3527-3136 - Reagent expiration update at UI
* PC3527-3143 - Nth value in Advanced options in queue creation
* PC3527-2736 - Displays 'X' under sensor status state section and in Motor status state section,even after Initialization 
* PC3527-846 - Create Release version of Offline Analysis / Simulator  software as customer installable
* PC3527-50 - OS configuration for anti-virus
* PC3527-1643 - Program Tree - Firmware KEY
* PC3527-903 - OS Recovery image specification document
* PC3527-100 - Program Tree - Firmware APP
* PC3527-3005 - Concentration assay value for 10M displays wrong in csv file.
* PC3527-3166 - Bubble count is not matching .In Info message and Bubble count value in image--Sample ID 
* PC3527-3204 - Title of legal/legal.html is incorrect
* PC3527-2212 - Reagent Uses Remaining Live Update
* PC3527-3182 - UI Signatures Not Showing Up
* PC3527-3176 - It is possible to kill the inactivity unlock dialog
* PC3527-3168 - Set focus restore notification message is not closing even after 90 seconds.
* PC3527-3139 - Completed run summary contains blank pages on every other page
* PC3527-2963 - Speed up reanalysis process
* PC3527-3104 - Save cell type from RUN and REANALYZE
* PC3527-3106 - Reports: Cell type cannot uncheck BCI default
* PC3527-3101 - Quality control names in images and graphs tab should not be editable
* PC3527-3161 - Run Results Bottom Field Not Viewable

### v0.17
* PC3527-11 - Security Timeout (was Git issue #300)
* PC3527-3239 - silent user no  cell type are displaying in default bar
* PC3527-3235 - Export Feature Does Not Export Images
* PC3527-3242 - inactivity timeout range should be 0 - 60
* PC3527-3171 - 56561,Change logging level to info for production build
* PC3527-3136 - Reagent expiration update at UI
* PC3527-3143 - Nth value in Advanced options in queue creation
* PC3527-3225 - Application closing when we import any other cfg file like ”Kloehn.cfg” file.
* PC3527-3005 - Concentration assay value for 10M displays wrong in csv file.
* PC3527-3166 - Bubble count is not matching .In Info message and Bubble count value in image-->Sample ID 
* PC3527-3229 - 3 runs are updating in Activities remaining live status for 1 set focus operation.
* PC3527-3141 - Analysis type needs to be removed from Admin--> users and my profile
* PC3527-3204 - Title of legal/legal.html is incorrect
* PC3527-2212 - Reagent Uses Remaining Live Update
* PC3527-3182 - UI Signatures Not Showing Up
* PC3527-3176 - It is possible to kill the inactivity unlock dialog
* PC3527-3168 - Set focus restore notification message is not closing even after 90 seconds.
* PC3527-3139 - Completed run summary contains blank pages on every other page
* PC3527-2963 - Speed up reanalysis process
* PC3527-3104 - Save cell type from RUN and REANALYZE
* PC3527-3106 - Reports: Cell type cannot uncheck BCI default
* PC3527-3101 - Quality control names in images and graphs tab should not be editable
* PC3527-3161 - Run Results Bottom Field Not Viewable

### v0.16
* PC3527-3154 - Reagent status ICON update issues
* PC3527-3177 - Cell Type / Reanalysis does not pass the correct setting for Decluster
* PC3527-3142 - ERROR indication for reagent status on title bar
* PC3527-3082 - Edited cell type data is not reflecting in run results screen csv export
* PC3527-3081 - Configuration Export/Import
* PC3527-3080 - Results Export and Delete
* PC3527-3169 - Reanalyze - (n)th Image Does Not Display In Review
* PC3527-3136 - Reagent expiration update at UI
* PC3527-3107 - Issues on graphs while running sample
* PC3527-3075 - Incorrect legends for Cell Count and Concentration expanded graphs
* PC3527-3150 - Cleanup SignUpView.xaml
* PC3527-2897 - Implement Message Hub
* PC3527-3132 - cannot generate instrument status report if no reagent pack
* PC3527-3041 - Not able to open Instrument report when we have fault errors in instrument.
* PC3527-3069 - Complete Help Page
* PC3527-3148 - Run Results Queue Table Pointer Not Aligning with Current Sample
* PC3527-3110 - Cell Type Reanalysis Results are bad
* PC3527-3012 - Bug fixes for PC3527-531 (Sample workflow)
* PC3527-3163 - Adjust entry fields to be positioned above soft keyboard
* PC3527-3180 - Remaining waste tube tray capacity text truncated
* PC3527-3181 - Hide Cell types -- Run feature from this version
* PC3527-3179 - Remove cell type / run feature
* PC3527-3141 - Analysis type needs to be removed from Admin-- users and my profile
* PC3527-3138 - The time in signature tag is displayed in 12 hour format without AM or PM indications. However, the time in time bar is displayed in 24 hour format
* PC3527-3149 - Inactivity window does not appear on top of set focus and dust reference
* PC3527-3072 - Format the legal pages to comply with Beckman style guide
* PC3527-3086 - Low and high concentrations must be flagged
* PC3527-2810 - Radio button in Admin Storage screen is confusing
* PC3527-3156 - Viable cell count is showing blank when value is 0 in summary screen.
* PC3527-3159 - Accessing Reports-Logs Causes App Crash
* PC3527-3170 - Address PublicResXFileCodeGenerator build warning
* PC3527-3158 - Change use of Calibration to Correction Factor
* PC3527-2875 - Keyboard issues: tap twice
* PC3527-874 - Correct copyright on source files
* PC3527-3145 - While creating cell type from create by run/open screen,no authentication message is appearing.
* PC3527-3103 - Cell type min/ max diameter cannot be blank
* PC3527-3102 - Quality control name should not be overlapped
* PC3527-2965 - UI appears to be calling GetUserInactivityTimout too often
* PC3527-2340 - Activity timeout does not block access to large graph window
* PC3527-2463 - Not able to access concentration screen after inactivity timeout. 
* PC3527-2427 - Inactivity Timeout Broken
* PC3527-224 - System state should be resumed after screen is locked manually or automatically (via inactivity timeout)
* PC3527-3108 - Image greyscale (Grey level histogram)  problems
* PC3527-3128 - Signatures attached to results displayed in all printed and exported forms of the result 
* PC3527-3123 - Cell types list scroll
* PC3527-3109 - PLAY button from queue creation
* PC3527-3056 - Users cannot create or save cell type with security off. 
* PC3527-3074 - Addition settings (queue creation bar) is not shown even if the sample deck type is carousel
* PC3527-3006 - In Quality control screen cell type is not displaying, when user deletes QC sample cell types from cell type screen.
* PC3527-2856 - ACK for library: aforge v2.2.4
* PC3527-3040 - Clicking pause before the first sample failed to pause
* PC3527-3090 - Settings-Run Options, Drop down for cell type doesn't scroll when more than screenfull of options present
* PC3527-3042 - Shutdown needs to be called correctly if application is closed from the task bar.
* PC3527-3015 - Auto populate QC selection in sample id on default bar
* PC3527-2680 - Optics screen: Current focus position reporting incorrect values
* PC3527-659 - OK to load samples prompt should be removed
* PC3527-2353 - User not able to sign reanalysed samples in review screen.
* PC3527-3118 - When machine is locked only the existing user should be able to unlock
* PC3527-2842 - BaseValidation.cs correct ResourceKey usage
* PC3527-2732 - Able to execute Valve (A(Reagent1) or E(Reagent 2)) by keeping Reagent door open in low level screen.
* PC3527-3035 - Dust reference workflow sends cancel to backend even if user selects Accept
* PC3527-3034 - AutoFocus workflow sends cancel to backend even if user selects Accept
* PC3527-3112 - Change logo and remove copyright message

### v0.15
* PC3527-3085 Cannot generate histogram data for sample with bubbles
* PC3527-3071 Auto Automated Nightly cleaning start time configurable
* PC3527-3037 0.14.11 - Reanalysis causes UI to freeze on spinning wait icon.
* PC3527-3032 Reanalysed sample details are not showing in Complete run summary report.
* PC3527-3031 Getting Unexpected error on tapping image / cell type in Review screen
* PC3527-3027 Allowing only _space_ characters in the application
* PC3527-3026 Splash and sign in screen changes
* PC3527-3014 Complete review of UI text strings
* PC3527-3005 Concentration assay value for 10M displays wrong in csv file.
* PC3527-3004 Concentration slope Expiration Time shows in instrument Report as 00.00.00
* PC3527-3003 (1\/3)Add settings to queue creation: Grid changes
* PC3527-3002 Add option to append sample CSV data to existing CSV file
* PC3527-3001 Add settings to default bar and queue creation
* PC3527-3000 Add comment field to default bar
* PC3527-2996 Improving performance in sorting in queue creation grid
* PC3527-2995 Remaining spent tube tray, remove redundant columns
* PC3527-2993 Performance improvement on retrieve results or open sample window
* PC3527-2992 User Interface is sending a wrong celltype while saving the reanalysis data.
* PC3527-2989 Remove Automatic export in run result screen and configure in queue creation
* PC3527-2980 Average diameter graph has bad data
* PC3527-2979 Concentration (\/ml) graph has bad data
* PC3527-2977 Stats table values incorrect
* PC3527-2976 Add Canceling Support To AutoFocus and DustReference
* PC3527-2959 (Empty) still being used as sample name
* PC3527-2958 System failed using 96 well plate
* PC3527-2957 Open sample window - Not showing results as per date or user name filter
* PC3527-2955 Reports: Remove number of samples column in sample activity logs
* PC3527-2952 Probe buttons does not enable\/ disable until probe motion is complete
* PC3527-2941 Assay Values in Concentration slope historical tab not in correct format
* PC3527-2940 Still reporting sizing slope in concentration slope window and report
* PC3527-2939 BLU onscreen table and .csv output Mismatch
* PC3527-2938 In reanalysis, cell type list does not allow scrolling with touch screen
* PC3527-2937 Unable to use underbar character in cell type name _
* PC3527-2935 Change Default text in bar to Sample Login
* PC3527-2920 UI displaying identical values for Avg Viable Diameter and Avg Viable Circularity
* PC3527-2916 Carousel image in Run Results does not always correctly display correct position
* PC3527-2915 Software fault when clicking pause (perhaps) a second time
* PC3527-2912 Clicking pause during carousel seek results in System error: Reagent Status: eOK
* PC3527-2911 Clarify behavior of delete button in Service - Concentration Slope - Historical
* PC3527-2902 Reanalysis changes
* PC3527-2883 Open Source License Screen
* PC3527-2877 Custom cell type sample is not opening in review screen when user gives image count as 1 and Shows error message as “Error on selecting sample “in Time bar.
* PC3527-2868 List Images for anlaysis in CSV files
* PC3527-2849 Completed run summary report: flash messages
* PC3527-2843 SetFocusViewModel -  CancelAutoFocus on UI Thread
* PC3527-2822 No data available to export message appears in time bar while executing samples. 
* PC3527-2792 Software About screen and Loading screen should reflect highest level software version, not UI version
* PC3527-2779 Add support to the UI to be able to turn on the Brightfield LED UI continuously
* PC3527-2774 Reports: Print title and comments edit box issue
* PC3527-2768 Logs: Texts truncated for multi line in all columns
* PC3527-2746 Running a sample from the run result window without creating a queue is inconsistent
* PC3527-2719 When initialization failure occurs, communicate to user
* PC3527-2701 UI needs to STOP writing the password generation keys \/ seeds \/ secrets to the log files
* PC3527-2688 Flow Cell Depth format in optics screen
* PC3527-2559 Export: From quality controls 
* PC3527-2554 Allow user to exit when nightly cleaning process fails due to error
* PC3527-2404 Cell type not displaying same,  in summary screen and in image sample ID grid
* PC3527-2288 Admin\/Storage selection of items functionality is unpresentable
* PC3527-2260 user defined cell type not displayed in the Run result table (Summary\/Image\/Graph tabs)
* PC3527-2208 Create Help feature in User Interface
* PC3527-1953 Add button to manually control reagent probe arm in Low Level Control screen + remove repetition tests
* PC3527-887 Importing QC in queue import
* PC3527-853 Refactor GetSystemHealth API Call off of UI Thread
* PC3527-531 Absorb change to GetWorkQueueStatus so that idle\/running\/paused can be easily known.
* PC3527-452 Icons are too small

### v0.14
*  PC3527-837  Update Summary results fields to customer relevant fields
*  PC3527-882  UI allowed acceptance of incomplete concentration slope
*  PC3527-1534 Displaying the detailed result of selected cell
*  PC3527-1790 Exported queue storage
*  PC3527-2248 Queue creation grid changes
*  PC3527-2315 PDF reports for Quality controls
*  PC3527-2348 Selected image is not displaying in Normal screen in dust reference image view.
*  PC3527-2356 After completion of run, New queue addition asks whether you want to discard currently added queue. There is no queue waiting , it has already completed.
*  PC3527-2424 Discard current work queue?
*  PC3527-2549 Changes in the small view graphs
*  PC3527-2550 Changes in the full screen (or large) large view graphs
*  PC3527-2600 Unable to review annotated or binary images in run results
*  PC3527-2638 The data displayed as 0 in Run result & Review screen for a user defined cell type.
*  PC3527-2644 Running Sample position in carousel image is displaying in black color.
*  PC3527-2695 System hung when clicking on \> in focus current position
*  PC3527-2696 On screen instruction for resetting waste tube capacity not sufficient
*  PC3527-2713 *   API Signatures mismatch
*  PC3527-2778 Graphing: Remove/hide range selector in this version
*  PC3527-2813 Required Sample Volumes should be added next to wash type in the UI
*  PC3527-2823 Un expected message appears While executing sample and Application get closed on tapping OK button.ing
*  PC3527-2846 Remove unused resource keys
*  PC3527-2865 IN CSV summary file, Reanalysis of only one sample by bci_service, Overwrites all other samples as reanalysed by bci_service at same time.
*  PC3527-2870 CSV ICON
*  PC3527-2871 Unexpected error on focus
*  PC3527-2872 Change icon for reanalysis and navigate to Run/ Reanalysis from 1st screen  
*  PC3527-2874 Starting a new queue is "not allowed" after aborting or ejecting previous queue
*  PC3527-2876 Confusing error message when no sample positions are selected
*  PC3527-2880 *   Instructions for dust reference
*  PC3527-2881 Clarify first instruction in the set focus procedure
*  PC3527-2882 Swap results column
*  PC3527-2886 Improve UI unmarshaling and representation of "detailed measurement" data
*  PC3527-2887 Implement lookup of blob measurement ID from user's tap on annotated image
*  PC3527-2888 *   Add display layout for annotated-cell detailed metrics
*  PC3527-2898 Implement Configuration Repository MVVM - Phase 1
*  PC3527-2902 Reanalysis changes
*  PC3527-2905 Fix instructions in Decontaminate screen
*  PC3527-2910 Enable Probe Volume to go down to 0 in Service - Low Level
*  PC3527-2914 Change Lot information in Service - Reagent Status
*  PC3527-2917 Default bar value for "wash" gets set to empty when sampling
*  PC3527-2919 Remove unused libraries from distribution
*  PC3527-2921 Bin sizes for SIZE distribution are not correct
*  PC3527-2923 Carousel selection functionality 
*  PC3527-2933 *   Reanalyzing a sample changes the "Reanalyzed by" detail 
*  PC3527-2943 *   When shutting down, UI is not waiting until backend has completed its shutdown  
*  PC3527-2960 *   Cell count graph has bad data

### v0.13
* Not gambling with luck - scout has had none thus far.

### v0.12
* Includes backend 0.60.29 which includes:
  * Encrypted config files and data files
* Includes ux 0.90 which includes:
  * PC3527-226 *    Password rules: On-screen description incorrect (1pt)   
  * PC3527-866  Review all "TODO" or "TBD" comments in Code and dismiss or story out
  * PC3527-883 *    UI - In Service Screen focus position is incorrect  
  * PC3527-895  Pausing WQ unusual behavior 
  * PC3527-1658 On-screen instructions for motor registration not accurate. 
  * PC3527-2165 Focus position reporting    
  * PC3527-2202 *   Low level controls: Brightfield LED shows wrong values  
  * PC3527-2247 Remove multi select feature in both carousel and 96 well    
  * PC3527-2258 *   Cell type name already exists   
  * PC3527-2317 PDF reports for Instrument status   
  * PC3527-2328 *   When user update security section,successful message in time bar displays as "Signature has been added".    
  * PC3527-2350 User not able to select samples from 96 well screen in mentioned scenario   
  * PC3527-2367 *   Security Changes are changed after selecting NO on update   
  * PC3527-2405 *   In csv file ,filenames shows as .csv for four samples run for 96 Well/Carousel. 
  * PC3527-2406 *   On tapping Eject button, discard popup message is appearing.    
  * PC3527-2479 In Concentration-->Historical screen, lot numbers are empty and Expiration dates are mismatching    
  * PC3527-2505 Open sample window modifications    
  * PC3527-2508 Initialization: Carousel tube detected  
  * PC3527-2543 *   Remove sign-in search and proceed to login screen if security enabled.  
  * PC3527-2552 Graph full screen - Statistics board update for each graph  
  * PC3527-2560 Export: CSV export from Reports-->Logs screen   
  * PC3527-2626 UI calling Shutdown() and IsShutdownComplete() APIs 
  * PC3527-2635 After executing 96 samples, In Review screen total 97 samples are displaying.1st sample displays as sample .010 
  * PC3527-2677 Set focus: Full screen graph changes    
  * PC3527-2724 UI not updating currently-displayed annotated image after reanalysis    
  * PC3527-2755 Disable BioProcess  
  * PC3527-2772 Concentration graphs: Y axis values are not proper  
  * PC3527-2773 Reports: Concentration graphs Y axis issue  
  * PC3527-2781 Anotated Image in black & white when first pressing "enlarge"   
  * PC3527-2784 "Cell counting" Error appears in instrument screen on tapping Analyze button .  
  * PC3527-2795 *   Reanalysis: Review screen and diagnostics changes   
  * PC3527-2796 Reanalysis: Cell types screens changes  
  * PC3527-2799 EXIT option 
  * PC3527-2817 Home button: "Unable to update queue..." message on timebar 
  * PC3527-2825 Trypan blue reagent is missing in reagent screen for admin, service and other users.    
  * PC3527-2841 *   ApiHawkeyeMsgHelper - ErrorCommon - eSoftwareFault Handling 
  * PC3527-2844 *   GetCurrentWorkQueueItem - HawkeyeErrorStatus is ignored 
  * PC3527-2850 *   "Software fault" message after using incorrect password 
  * PC3527-2853 *   Password displaying in Event log    
  * PC3527-2880 *   Instructions for dust reference 
  * PC3527-2893 *   Not displaying the installed plate image in Cell type-->create by run screen.   
  * PC3527-2899 *   Instrument incorrectly assuming carousel or plate deck type is not selected 
### v0.10.6
* Initial working version:
    * Includes packaging of self-extracting zip using nullsoft
    * Includes msi created using WiX

### v0.0.1
* Initial version
