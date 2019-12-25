; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define Arch "64"
#define MyAppName "INDIGO Control Panel"
#define MyAppVersion "0.6-0"
#define MyAppPublisher "INDIGO Initiative"
#define MyAppURL "http://www.indigo-astronomy.org"
#define MyAppExeName "indigo_control_panel.exe"
#define MySourcePrefix "C:\Users\rumen\build-indigo_control_panel-Desktop_Qt_5_12_2_MinGW_" + Arch + "_bit-Release\release\indigo_control_panel"

[Setup]
; NOTE: The value of AppId uniquely identifies this application. Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{B3CAE4DB-87AB-4153-8D22-3A845B409322}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
;AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={autopf}\{#MyAppName}
DisableProgramGroupPage=yes
; Uncomment the following line to run in non administrative install mode (install for current user only.)
;PrivilegesRequired=lowest
PrivilegesRequiredOverridesAllowed=dialog
OutputBaseFilename=INDIGO_Control_Panel-{#MyAppVersion}-{#Arch}bit-setup
Compression=lzma
SolidCompression=yes
WizardStyle=modern
WizardSmallImageFile=appicon.bmp
WizardImageFile=logo.bmp

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked

[Files]
Source: "{#MySourcePrefix}\indigo_control_panel.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "appicon.ico"; DestDir: "{app}"; Flags: ignoreversion
Source: "{#MySourcePrefix}\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Icons]
Name: "{autoprograms}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; IconFilename: "{app}\appicon.ico"
Name: "{autodesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; IconFilename: "{app}\appicon.ico"; Tasks: desktopicon

[Run]
Filename: "{app}\{#MyAppExeName}"; Description: "{cm:LaunchProgram,{#StringChange(MyAppName, '&', '&&')}}"; Flags: nowait postinstall skipifsilent
