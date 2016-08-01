; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName "Handy Toolkit"
#define MyAppVersion "1.0"
#define MyAppPublisher "Kyaw Swar Thwin"
#define MyAppExeName "Handy Toolkit.exe"

[Setup]
; NOTE: The value of AppId uniquely identifies this application.
; Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{D66FEAA0-1314-44ED-8C04-E1A7953A64AA}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
DefaultDirName={pf}\{#MyAppName}
DefaultGroupName={#MyAppName}
OutputDir=D:\Kyaw Swar Thwin\Products\Handy Toolkit\Output
OutputBaseFilename=Setup
Compression=lzma
SolidCompression=yes
VersionInfoVersion=1.0.0.0
VersionInfoCompany=Kyaw Swar Thwin
VersionInfoDescription=Handy Toolkit Setup
VersionInfoTextVersion=1, 0, 0, 0
VersionInfoCopyright=Copyright � 2014 Kyaw Swar Thwin

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"
Name: "quicklaunchicon"; Description: "{cm:CreateQuickLaunchIcon}"; GroupDescription: "{cm:AdditionalIcons}"; OnlyBelowVersion: 0,6.1

[Files]
Source: "D:\Kyaw Swar Thwin\Products\Handy Toolkit\Release\Handy Toolkit.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "D:\Kyaw Swar Thwin\Products\Handy Toolkit\Release\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Icons]
Name: "{group}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"
Name: "{group}\{cm:UninstallProgram,{#MyAppName}}"; Filename: "{uninstallexe}"
Name: "{commondesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: desktopicon
Name: "{userappdata}\Microsoft\Internet Explorer\Quick Launch\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: quicklaunchicon

[Run]
Filename: "{app}\{#MyAppExeName}"; Description: "{cm:LaunchProgram,{#StringChange(MyAppName, '&', '&&')}}"; Flags: nowait postinstall skipifsilent
