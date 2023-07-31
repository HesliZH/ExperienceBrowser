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
    procedure FormShow(Sender: TObject);
    procedure MnAbrirDevToolsClick(Sender: TObject);
    procedure BtIrClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPrincipal: TFormPrincipal;

implementation

{$R *.dfm}

procedure TFormPrincipal.BtIrClick(Sender: TObject);
begin
  ChromiumBase.LoadURL(EdUrl.Text);
end;

procedure TFormPrincipal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   if Assigned(GlobalCEFApp) then
     FreeAndNil(GlobalCEFApp);
end;

procedure TFormPrincipal.FormShow(Sender: TObject);
begin
  ChromiumBase.CreateBrowser(ChromiumWindowBase);
end;

procedure TFormPrincipal.MnAbrirDevToolsClick(Sender: TObject);
begin
  ChromiumBase.ShowDevTools(Mouse.CursorPos);
end;

end.
