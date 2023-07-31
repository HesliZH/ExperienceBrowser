unit FoPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.StdCtrls, Vcl.ComCtrls,
  uCEFWinControl, uCEFLinkedWinControlBase, uCEFChromiumWindow,
  uCEFChromiumCore, uCEFChromium, uCEFApplicationCore;

type
  TFormPrincipal = class(TForm)
    MenuPrincipal: TMainMenu;
    MnNavegador: TMenuItem;
    MnIrPara: TMenuItem;
    MnSair: TMenuItem;
    MnDev: TMenuItem;
    MnAbrirDevTools: TMenuItem;
    GbPrincipal: TGroupBox;
    EdUrl: TEdit;
    BtIr: TButton;
    PgPrincipal: TPageControl;
    PgBase: TTabSheet;
    LbLinkAcesso: TLabel;
    ChromiumBase: TChromium;
    ChromiumWindowBase: TChromiumWindow;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPrincipal: TFormPrincipal;

implementation

{$R *.dfm}

procedure TFormPrincipal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   if Assigned(GlobalCEFApp) then
     FreeAndNil(GlobalCEFApp);
end;

end.
