object OpPcm_main: TOpPcm_main
  Left = 1444
  Top = 292
  BorderStyle = bsSingle
  Caption = 'OpPcm'
  ClientHeight = 449
  ClientWidth = 410
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  Menu = main_menu
  OldCreateOrder = False
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object ImgFeld: TImage
    Left = 5
    Top = 5
    Width = 400
    Height = 400
  end
  object BtnReset: TButton
    Left = 8
    Top = 416
    Width = 75
    Height = 25
    Caption = 'Reset'
    TabOrder = 0
    OnClick = BtnResetClick
  end
  object main_menu: TMainMenu
    Left = 376
    Top = 416
    object Einstellungen1: TMenuItem
      Caption = 'Einstellungen'
      OnClick = Einstellungen1Click
    end
  end
end
