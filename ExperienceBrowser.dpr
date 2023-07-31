program ExperienceBrowser;

uses
  Vcl.Forms,
  FoPrincipal in 'Forms\FoPrincipal.pas', {FormPrincipal}
  uCEFApplication,
  uCEFApplicationCore;

{$R *.res}

begin
  GlobalCEFApp                 := TCefApplication.Create;
  GlobalCEFApp.MustFreeLibrary := False;
  GlobalCEFApp.LocalesDirPath       := 'cef\locales';
  GlobalCEFApp.EnableGPU            := True;      // Enable hardware acceleration
  GlobalCEFApp.cache                := 'cef\cache';

  if Not (GlobalCEFApp.StartMainProcess) then
    Exit;

  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormPrincipal, FormPrincipal);
  Application.Run;
end.
