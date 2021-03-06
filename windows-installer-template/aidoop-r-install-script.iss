; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName "AIdoop-R"
#define MyAppVersion "3.7.0"
#define MyAppPublisher "AIdoop. Inc."
#define MyAppURL "https://www.ai-doop.com/"

[Setup]
; NOTE: The value of AppId uniquely identifies this application. Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{3D09C3E7-CAFB-40B8-B2C9-6805B89B4F5A}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
;AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={autopf}\{#MyAppName}
DefaultGroupName={#MyAppName}
AllowNoIcons=yes
; Uncomment the following line to run in non administrative install mode (install for current user only.)
;PrivilegesRequired=lowest
OutputBaseFilename=AIdoopRSetup
Compression=lzma
SolidCompression=yes
WizardStyle=modern

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Files]
Source: "D:\Documents\AIdoop\Windows Install Package\packages\AIdoop-R\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "D:\Documents\AIdoop\Windows Install Package\node-v14.17.6-x64.msi"; DestDir: {src}; Flags: deleteafterinstall;
Source: "D:\Documents\AIdoop\Windows Install Package\yarn-1.22.15.msi"; DestDir: {src}; Flags: deleteafterinstall;
Source: "D:\Documents\AIdoop\Windows Install Package\Git-2.33.0.2-64-bit.exe"; DestDir: "{app}"; Flags: ignoreversion
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Run]
Filename: "{src}\node-v14.17.6-x64.msi"; Description: "Install Node"; Verb: open; Flags: shellexec postinstall waituntilterminated runascurrentuser skipifsilent
Filename: "{src}\yarn-1.22.15.msi"; Description: "Install Yarn"; Verb: open; Flags: shellexec postinstall waituntilterminated runascurrentuser skipifsilent
Filename: "{src}\nssm_install.bat"; Description: "Install service"; \
    Flags: nowait postinstall hidewizard runhidden runascurrentuser; 


