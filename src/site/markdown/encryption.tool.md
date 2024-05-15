These instructions are only applicable to deployment release v0.11.16 and later.
With this release all of the data in C:\\Instrument\\ResultsData\\ResultBinaries will now be encrypted.
Prior to using this release all of the data in C:\\Instrument\\ResultsData must be deleted.
As of this release all of the info files in the C:\\Instrument\\Config directory tree are now encrypted as well as all of the sample data.
 
These instructions assume that release v0.11.16 has already been installed.
 
Acquire the DataEncryptDecrypt.exe from: the package: https://s3-us-west-2.amazonaws.com/beckman-build-artifacts/m2/release/com/beckman/particle/hawkeye/backend/0.63.1/backend-0.63.1-installer.zip

When you unzip this package you will find the tool in the Hawkeye directory

Place the DataEncryptDecrypt.exe in the C:\\Instrument\\Software directory.
 
From Windows Explorer run the DataEncryptDecrypt.exe application.

1.      On the right hand side of the dialog there is a file selection icon, use this to traverse to the file that you want to decrypt and select it.

2.      Only the encrypted files can selected here i.e files with the extension ".e" ({Filename}.e{original_extn}). 
        For Example :  
             HawkeyeStatic.einfo

3.      After selecting the file to decrypt, select the "Decrypt file" File button.

4.      This generates a "{Filename}.{original_extn}" file in the same directory as the file selected for decryption, with the same filename and original extension i.e without "e"

5.      Select the Check box "EditAndEncrypt" next to "Decrypt file" button and edit the file contents in the editor window of the application.

6.      After editing the file contents, click on the "Encrypt Edit Data" ( Just below the "EditAndEncrypt" check box) button by ensuring to select the "Delete Decrypt" check box (Next to "Encrypt Edit Data" button - By default this check box is selected). When the check box "Delete Decrypt" is selected , it will remove the decrypted file (Without "e" in extension) after encryption. 
