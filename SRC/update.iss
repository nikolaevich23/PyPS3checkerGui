;InnoSetupVersion=5.6.1 (Unicode)

#define MyApp "PyPS3 Ñhecker Gui"
#define ShortName "PS3ÑheckGui"
#define Version "1.0.0"
#define Publisher "by in1975"
#define Team "PSPx Team"
#define URL "http://www.pspx.ru/forum/showthread.php?t=107194"
#define UpdatesURL "https://github.com/nikolaevich23/PyPS3checkerGui/blob/master/update.exe"
#define ExeName "PyPS3 checker Gui"
#define Skin "CrystalBlue"

[Setup]
AppId={{03F96E9A-8798-4FEB-894B-9DF8F88CAEF6}
AppName={#ShortName}
AppVersion={#Version}
AppVerName={#MyApp} v{#Version}
AppPublisher={#MyApp} {#Team}
AppPublisherURL={#URL}
AppSupportURL={#URL}
AppUpdatesURL={#UpdatesURL}
DefaultDirName={sd}\{#ShortName}
DefaultGroupName={#ShortName}
ShowLanguageDialog=no
UninstallDisplayIcon={app}\PyPS3 checker Gui.exe
UninstallDisplayName={#ShortName}
AllowNoIcons=yes
OutputDir=.
OutputBaseFilename=setup
SetupIconFile=embedded\myicon.ico
WizardImageFile=embedded\WizardImage.bmp
WizardSmallImageFile=embedded\WizardSmallImage.bmp
;WizardImageAlphaFormat=premultiplied 
VersionInfoCompany={#Team}
VersionInfoCopyright={#ShortName} {#Publisher}
VersionInfoDescription={#MyApp} {#Publisher} 
VersionInfoVersion={#Version}
Compression=lzma2/max
SolidCompression=Yes

[Languages]
Name: "en"; MessagesFile: "compiler:Default.isl"; InfoBeforeFile: "embedded\InfoBefore-en.rtf"
Name: "ru"; MessagesFile: "compiler:Languages\Russian.isl"; InfoBeforeFile: "embedded\InfoBefore-ru.rtf"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"
Name: "quicklaunchicon"; Description: "{cm:CreateQuickLaunchIcon}"; GroupDescription: "{cm:AdditionalIcons}"

[Files]
Source: "Update\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "embedded\EN\config.ini"; DestDir: "{app}"; Languages: en; Flags: ignoreversion
Source: "embedded\RU\config.ini"; DestDir: "{app}"; Languages: ru; Flags: ignoreversion
;Source: "embedded\DE\config.ini"; DestDir: "{app}"; Languages: de; Flags: ignoreversion

[Icons]
Name: "{group}\{#ShortName}"; Filename: "{app}\{#ExeName}"
Name: "{group}\{cm:ProgramOnTheWeb,{#ShortName}}"; Filename: "{#URL}"
Name: "{group}\{cm:UninstallProgram,{#ShortName}}"; Filename: "{uninstallexe}"
Name: "{commondesktop}\{#ShortName}"; Filename: "{app}\{#ExeName}"; Tasks: desktopicon
Name: "{userappdata}\Microsoft\Internet Explorer\Quick Launch\{#ShortName}"; Filename: "{app}\{#ExeName}"; Tasks: quicklaunchicon

[Run]
Filename: "{app}\{#ExeName}"; Description: "{cm:LaunchProgram,{#StringChange(ShortName, '&', '&&')}}"; Flags: nowait postinstall
