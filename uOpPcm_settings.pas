unit uOpPcm_settings;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TOpPcm_settings = class(TForm)
    GrpBox_farben: TGroupBox;
    LblSpielfeld: TLabel;
    ClrBox_spielfeld: TColorBox;
    BtnBack: TButton;
    LblPacman: TLabel;
    ClrBox_pacman: TColorBox;
    LblHintergrund: TLabel;
    ClrBox_hintergrund: TColorBox;
    BtnReset_settings: TButton;
    procedure ClrBox_spielfeldChange(Sender: TObject);
    procedure BtnBackClick(Sender: TObject);
    procedure ClrBox_pacmanChange(Sender: TObject);
    procedure ClrBox_hintergrundChange(Sender: TObject);
    procedure BtnReset_settingsClick(Sender: TObject);
  private
    { Private-Deklarationen }
  public
    { Public-Deklarationen }
  end;

var
  OpPcm_settings: TOpPcm_settings;

implementation

uses uOpPcm_main;

{$R *.dfm}

procedure TOpPcm_settings.BtnBackClick(Sender: TObject);
begin

  OpPcm_main.show;
  OpPcm_settings.Close;

end;

procedure TOpPcm_settings.ClrBox_hintergrundChange(Sender: TObject);
begin

  OpPcm_main.Color0 := ClrBox_hintergrund.Selected;

  OpPcm_main.DrawCells;

end;

procedure TOpPcm_settings.ClrBox_spielfeldChange(Sender: TObject);
begin

  OpPcm_main.Color1 := ClrBox_spielfeld.Selected;

  OpPcm_main.DrawCells;

end;

procedure TOpPcm_settings.ClrBox_pacmanChange(Sender: TObject);
begin

  OpPcm_main.Color2 := ClrBox_pacman.Selected;

  OpPcm_main.DrawCells;

end;

procedure TOpPcm_settings.BtnReset_settingsClick(Sender: TObject);
begin

  //Hintergrund auf Weiﬂ setzen
  ClrBox_hintergrund.Selected := ClWhite;
  OpPcm_main.Color0 := ClrBox_hintergrund.Selected;

  //Spielfeld auf Blau setzen
  ClrBox_spielfeld.Selected := ClBlue;
  OpPcm_main.Color1 := ClrBox_spielfeld.Selected;

  //Pacman auf Gelb setzen
  ClrBox_pacman.Selected := ClYellow;
  OpPcm_main.Color2 := ClrBox_pacman.Selected;


  OpPcm_main.DrawCells;

end;

end.
