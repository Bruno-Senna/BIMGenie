#define MyAppName "BIMGenie"
#define MyAppVersion "v0.0.4"
#define MyAppPublisher "BIM Genie, Inc."
#define MyAppURL "https://github.com/Bruno-Senna/BIMGenie/releases"
#define MyAppSupport "support@bimgenie.com"

[Setup]
AppId={{F481D372-36C4-4665-AAAD-0BFAD1878338}}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
AppVerName=BIM Genie
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={userappdata}\Autodesk\Revit\Addins\2025\{#MyAppName}
DisableDirPage=yes
DefaultGroupName={#MyAppName}
DisableProgramGroupPage=yes
PrivilegesRequired=lowest
UsedUserAreasWarning=no
OutputDir=.
OutputBaseFilename=BIMGenie_Installer
SolidCompression=yes
WizardStyle=modern
LicenseFile=TERMS.txt

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[InstallDelete]
Type: filesandordirs; Name: "{userappdata}\Autodesk\Revit\Addins\2025\BIM Genie"
Type: filesandordirs; Name: "{userappdata}\Autodesk\Revit\Addins\2025\{#MyAppName}"
Type: files; Name: "{userappdata}\Autodesk\Revit\Addins\2025\{#MyAppName}.addin"

[Files]
; DLL and dependencies
Source: "C:\Revit Plug-ins\BIMGenie_Addin\BIMGenie_Addin\bin\Release\2025\Confused\*"; DestDir: "{userappdata}\Autodesk\Revit\Addins\2025\{#MyAppName}"; Flags: ignoreversion recursesubdirs createallsubdirs

; Documentation files
Source: "LICENSE"; DestDir: "{userappdata}\Autodesk\Revit\Addins\2025\{#MyAppName}"; Flags: ignoreversion
Source: "README.md"; DestDir: "{userappdata}\Autodesk\Revit\Addins\2025\{#MyAppName}"; Flags: ignoreversion
Source: "CHANGELOG.md"; DestDir: "{userappdata}\Autodesk\Revit\Addins\2025\{#MyAppName}"; Flags: ignoreversion
Source: "TERMS.txt"; DestDir: "{userappdata}\Autodesk\Revit\Addins\2025\{#MyAppName}"; Flags: ignoreversion

[Messages]
LicenseAgreementCheckbox=You must accept the Terms of Use and Privacy Policy (Contact: {#MyAppSupport}) to proceed with the installation.

[Code]
// Aceite de licença obrigatório
procedure InitializeWizard;
begin
  WizardForm.LicenseAcceptedRadio.Checked := False;
end;

function NextButtonClick(CurPageID: Integer): Boolean;
begin
  Result := True;
  if (CurPageID = wpLicense) and not WizardForm.LicenseAcceptedRadio.Checked then
  begin
    MsgBox('You must accept the Terms of Use and Privacy Policy to proceed with the installation.', mbError, MB_OK);
    Result := False;
  end;
end;

// Gera o arquivo .addin dinamicamente com caminho correto
procedure GenerateAddinFile();
var
  AddinFile, AddinText, PluginPath: string;
begin
  PluginPath := ExpandConstant('{userappdata}\Autodesk\Revit\Addins\2025\') + '{#MyAppName}';
  AddinFile := PluginPath + '.addin';

  AddinText :=
    '<?xml version="1.0" encoding="utf-8" standalone="no"?>' + #13#10 +
    '<RevitAddIns>' + #13#10 +
    '  <AddIn Type="Application">' + #13#10 +
    '    <Name>{#MyAppName}</Name>' + #13#10 +
    '    <Assembly>' + PluginPath + '\BIMGenie_Addin.dll</Assembly>' + #13#10 +
    '    <AddInId>12345678-1234-5678-1234-567812345678</AddInId>' + #13#10 +
    '    <FullClassName>BIMGenieTools.RibbonApp</FullClassName>' + #13#10 +
    '    <VendorId>BIM Genie</VendorId>' + #13#10 +
    '    <VendorDescription>This plugin was developed by Bruno Senna, a senior specialist in BIM.</VendorDescription>' + #13#10 +
    '    <Description>This plugin was developed using the most advanced and up-to-date features of the Revit 2025+ API to ensure maximum performance, stability, and innovation.</Description>' + #13#10 +
    '  </AddIn>' + #13#10 +
    '</RevitAddIns>';

  SaveStringToFile(AddinFile, AddinText, False);
end;

// Executa ao final da instalação
procedure CurStepChanged(CurStep: TSetupStep);
begin
  if CurStep = ssPostInstall then
    GenerateAddinFile();
end;

// Executa na desinstalação
procedure CurUninstallStepChanged(CurUninstallStep: TUninstallStep);
var
  DBFolder: string;
begin
  if CurUninstallStep = usUninstall then
  begin
    // Remove plugin folders
    DelTree(ExpandConstant('{userappdata}\Autodesk\Revit\Addins\2025\{#MyAppName}'), True, True, True);
    DelTree(ExpandConstant('{userappdata}\Autodesk\Revit\Addins\2025\BIM Genie'), True, True, True); // fallback

    // Remove .addin file
    DeleteFile(ExpandConstant('{userappdata}\Autodesk\Revit\Addins\2025\{#MyAppName}.addin'));

    // Remove local DB
    DBFolder := ExpandConstant('{userappdata}\BIMGenie');
    DelTree(DBFolder, True, True, True);
  end;
end;
