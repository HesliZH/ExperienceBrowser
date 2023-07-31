object FormPrincipal: TFormPrincipal
  Left = 0
  Top = 0
  Caption = 'Experience Browser'
  ClientHeight = 722
  ClientWidth = 1227
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Menu = MenuPrincipal
  TextHeight = 15
  object GbPrincipal: TGroupBox
    Left = 0
    Top = 0
    Width = 1227
    Height = 81
    Align = alTop
    TabOrder = 0
    DesignSize = (
      1227
      81)
    object LbLinkAcesso: TLabel
      Left = 9
      Top = 12
      Width = 125
      Height = 15
      Caption = 'Insira a URL para acesso'
    end
    object EdUrl: TEdit
      Left = 3
      Top = 32
      Width = 1134
      Height = 23
      Hint = 'Digite o link para acesso'
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 0
    end
    object BtIr: TButton
      Left = 1149
      Top = 31
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'Ir'
      TabOrder = 1
    end
  end
  object PgPrincipal: TPageControl
    Left = 0
    Top = 81
    Width = 1227
    Height = 641
    ActivePage = PgBase
    Align = alClient
    TabOrder = 1
    ExplicitTop = 121
    ExplicitHeight = 601
    object PgBase: TTabSheet
      Caption = 'P'#225'gina inicial'
      object ChromiumWindowBase: TChromiumWindow
        Left = 0
        Top = 0
        Width = 1219
        Height = 611
        Align = alClient
        TabOrder = 0
        ExplicitLeft = 624
        ExplicitTop = 392
        ExplicitWidth = 100
        ExplicitHeight = 40
      end
    end
  end
  object MenuPrincipal: TMainMenu
    Left = 1096
    Top = 616
    object MnNavegador: TMenuItem
      Caption = 'Navegador'
      object MnIrPara: TMenuItem
        Caption = 'Ir para: '
      end
      object MnSair: TMenuItem
        Caption = 'Sair'
      end
    end
    object MnDev: TMenuItem
      Caption = 'Ferramentas de desenvolvedor'
      object MnAbrirDevTools: TMenuItem
        Caption = 'Ativar DevTools'
      end
    end
  end
  object ChromiumBase: TChromium
    Left = 608
    Top = 376
  end
end
