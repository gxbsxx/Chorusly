; Instalador de Chorusly para Windows (Inno Setup 6). Lo fabrica el flujo «Chorusly.exe» de GitHub:
;   ISCC /DVersion=1.7.0 /DSource=dist\Chorusly build\instalador.iss
; Se instala para el usuario (sin permisos de administrador) para que Chorusly pueda actualizar sus propios archivos.
#ifndef Version
  #define Version "0.0.0"
#endif
#ifndef Source
  #define Source "..\dist\Chorusly"
#endif

[Setup]
AppId={{6F3A2C1E-8B7D-4E59-9A41-1C2D3E4F5A6B}
AppName=Chorusly
AppVersion={#Version}
AppVerName=Chorusly {#Version}
AppPublisher=gxbsxx
AppPublisherURL=https://github.com/gxbsxx/chorusly
AppSupportURL=https://github.com/gxbsxx/chorusly
DefaultDirName={localappdata}\Programs\Chorusly
DefaultGroupName=Chorusly
DisableProgramGroupPage=yes
PrivilegesRequired=lowest
OutputDir=..\dist
OutputBaseFilename=Chorusly-Instalador
SetupIconFile=chorusly.ico
UninstallDisplayIcon={app}\Chorusly.exe
UninstallDisplayName=Chorusly
WizardStyle=modern
WizardImageFile=instalador-164.bmp,instalador-246.bmp,instalador-328.bmp
WizardSmallImageFile=instalador-mini-55.bmp,instalador-mini-83.bmp,instalador-mini-110.bmp
Compression=lzma2/max
SolidCompression=yes
ArchitecturesAllowed=x64compatible
ArchitecturesInstallIn64BitMode=x64compatible
CloseApplications=yes
; La app se llamaba «Livalyst»: se instala en la carpeta nueva, no en la del nombre viejo
UsePreviousAppDir=no
UsePreviousGroup=no

[Languages]
Name: "es"; MessagesFile: "compiler:Languages\Spanish.isl"

[Tasks]
Name: "escritorio"; Description: "Crear un acceso directo en el escritorio"; GroupDescription: "Accesos directos:"
Name: "arranque"; Description: "Abrir Chorusly al encender el ordenador"; GroupDescription: "Arranque:"; Flags: unchecked

[Files]
Source: "{#Source}\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs

; Lo que quedó del nombre anterior («Livalyst»): programa viejo, sus accesos directos y su carpeta
[InstallDelete]
Type: filesandordirs; Name: "{localappdata}\Programs\Livalyst"
Type: filesandordirs; Name: "{userprograms}\Livalyst"
Type: files; Name: "{userdesktop}\Livalyst.lnk"
Type: files; Name: "{userstartup}\Livalyst.lnk"

[INI]
Filename: "{app}\Chorusly Widgets.url"; Section: "InternetShortcut"; Key: "URL"; String: "http://localhost:8787/widgets"

[Icons]
Name: "{group}\Chorusly"; Filename: "{app}\Chorusly.exe"; WorkingDir: "{app}"
Name: "{group}\Chorusly Widgets"; Filename: "{app}\Chorusly Widgets.url"; IconFilename: "{app}\Chorusly.exe"
Name: "{group}\Comprobar Chorusly"; Filename: "{app}\Comprobar Chorusly.bat"; WorkingDir: "{app}"; IconFilename: "{app}\Chorusly.exe"
Name: "{group}\Desinstalar Chorusly"; Filename: "{uninstallexe}"
Name: "{userdesktop}\Chorusly"; Filename: "{app}\Chorusly.exe"; WorkingDir: "{app}"; Tasks: escritorio
Name: "{userstartup}\Chorusly"; Filename: "{app}\Chorusly.exe"; WorkingDir: "{app}"; Tasks: arranque

[Run]
Filename: "{app}\Chorusly.exe"; Description: "Abrir Chorusly ahora"; Flags: nowait postinstall skipifsilent

[UninstallDelete]
Type: files; Name: "{app}\chorusly.log"
Type: files; Name: "{app}\Chorusly Widgets.url"

[Code]
// Cierra Chorusly (y su icono junto al reloj) para poder cambiar o borrar sus archivos
procedure CerrarChorusly();
var R: Integer;
begin
  Exec(ExpandConstant('{sys}\taskkill.exe'), '/F /T /IM ChoruslyBandeja.exe', '', SW_HIDE, ewWaitUntilTerminated, R);
  Exec(ExpandConstant('{sys}\taskkill.exe'), '/F /T /IM Chorusly.exe', '', SW_HIDE, ewWaitUntilTerminated, R);
  Exec(ExpandConstant('{sys}\taskkill.exe'), '/F /T /IM LivalystBandeja.exe', '', SW_HIDE, ewWaitUntilTerminated, R); // versión con el nombre anterior
  Exec(ExpandConstant('{sys}\taskkill.exe'), '/F /T /IM Livalyst.exe', '', SW_HIDE, ewWaitUntilTerminated, R);
  Sleep(800);
end;

function PrepareToInstall(var NeedsRestart: Boolean): String;
begin
  CerrarChorusly();
  Result := '';
end;

function InitializeUninstall(): Boolean;
begin
  CerrarChorusly();
  Result := True;
end;

// Al desinstalar, los ajustes (cuentas, widgets, metas) se quedan salvo que digas que no
procedure CurUninstallStepChanged(CurUninstallStep: TUninstallStep);
begin
  if (CurUninstallStep = usPostUninstall) and not UninstallSilent() then
    if MsgBox('¿Quieres borrar también tus ajustes de Chorusly (cuentas, widgets, metas y sonidos subidos)?'#13#10#13#10'Si vas a volver a instalarlo, elige «No» y lo encontrarás todo como lo dejaste.', mbConfirmation, MB_YESNO or MB_DEFBUTTON2) = IDYES then
      DelTree(ExpandConstant('{userappdata}\Chorusly'), True, True, True);
end;
