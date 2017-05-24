object OpPcm_settings: TOpPcm_settings
  Left = 1026
  Top = 237
  BorderStyle = bsSingle
  Caption = 'Einstellungen'
  ClientHeight = 257
  ClientWidth = 337
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object GrpBox_farben: TGroupBox
    Left = 8
    Top = 16
    Width = 321
    Height = 185
    Caption = 'Farben'
    Font.Charset = EASTEUROPE_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object LblSpielfeld: TLabel
      Left = 8
      Top = 72
      Width = 51
      Height = 15
      Caption = 'Spielfeld:'
      Font.Charset = EASTEUROPE_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object LblPacman: TLabel
      Left = 8
      Top = 128
      Width = 49
      Height = 15
      Caption = 'Pacman:'
      Font.Charset = EASTEUROPE_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object LblHintergrund: TLabel
      Left = 8
      Top = 24
      Width = 153
      Height = 15
      Caption = 'Hintergrund (vom Spielfeld):'
      Font.Charset = EASTEUROPE_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object ClrBox_spielfeld: TColorBox
      Left = 8
      Top = 88
      Width = 305
      Height = 22
      DefaultColorColor = clBlue
      NoneColorColor = clBlue
      Selected = clBlue
      Font.Charset = EASTEUROPE_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemHeight = 16
      ParentFont = False
      TabOrder = 0
      OnChange = ClrBox_spielfeldChange
    end
    object ClrBox_pacman: TColorBox
      Left = 8
      Top = 144
      Width = 305
      Height = 22
      DefaultColorColor = clYellow
      NoneColorColor = clYellow
      Selected = clYellow
      Font.Charset = EASTEUROPE_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemHeight = 16
      ParentFont = False
      TabOrder = 1
      OnChange = ClrBox_pacmanChange
    end
    object ClrBox_hintergrund: TColorBox
      Left = 8
      Top = 40
      Width = 305
      Height = 22
      DefaultColorColor = clWhite
      NoneColorColor = clWhite
      Selected = clWhite
      Font.Charset = EASTEUROPE_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemHeight = 16
      ParentFont = False
      TabOrder = 2
      OnChange = ClrBox_hintergrundChange
    end
  end
  object BtnBack: TButton
    Left = 8
    Top = 216
    Width = 81
    Height = 25
    Caption = 'Zur'#252'ck'
    Font.Charset = EASTEUROPE_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnClick = BtnBackClick
  end
  object BtnReset_settings: TButton
    Left = 248
    Top = 216
    Width = 83
    Height = 25
    Caption = 'Zur'#252'cksetzen'
    Font.Charset = EASTEUROPE_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnClick = BtnReset_settingsClick
  end
end
