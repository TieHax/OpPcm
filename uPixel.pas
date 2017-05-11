unit uPixel;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TForm1 = class(TForm)
    ImgFeld: TImage;
    BtnReset: TButton;
    procedure FormCreate(Sender: TObject);
    procedure Reset;
    //procedure DrawGrid;
    procedure DrawCells;

    //Fürs malen mit der Maus, wenn dass hier und unten das wieder eingeklammert ist, muss man im ImgFeld bei OnMouseDown wieder ImgFeldMouseDown einfügen
     {procedure ImgFeldMouseDown(Sender: TObject; Button: TMouseButton;
        Shift: TShiftState; X, Y: Integer);}

    procedure BtnResetClick(Sender: TObject);
  private
    { Private-Deklarationen }
  public
    { Public-Deklarationen }
  end;

const
  dx = 16;
  dy = 16;

var
  Form1: TForm1;
  Spielfeld: Array[1..25,1..25] of Integer;


implementation

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
begin
  ImgFeld.Canvas.Pen.Color := clWhite;
  // Initialisiere Spielfeld
  Reset;
end;

procedure TForm1.Reset;

var
  x, y: Integer;

begin
  //Rand
  for x := 1 to 25 do
  begin
    Spielfeld[x,1] := 1;
    for y := 2 to 24 do
      Spielfeld[x,y] := 0;
    Spielfeld[x,25] := 1;
  end;
  for y := 2 to 24 do
  begin
    Spielfeld[1,y] := 1;
    Spielfeld[25,y] := 1;
  end;
  Spielfeld[1,13] := 0;
  Spielfeld[25,13] := 0;

  //Feld oben mitte und unten (3x3, 1x3, 3x3)
  for x := 12 to 14 do
  begin
    //Feld 1
    Spielfeld[x,2] := 1;
    Spielfeld[x,3] := 1;
    Spielfeld[x,4] := 1;
    //Feld 2
    Spielfeld[x,19] := 1;
    //Feld 3
    Spielfeld[x,21] := 1;
    Spielfeld[x,22] := 1;
    Spielfeld[x,23] := 1;
  end;

  //Feld rechts oben und unten (2x3, 1x3, 1x3)
  for x := 3 to 5 do
  begin
    //Feld 1
    Spielfeld[x,3] := 1;
    Spielfeld[x,4] := 1;
    //Feld 2
    Spielfeld[x,6] := 1;
    //Feld 3
    Spielfeld[x,20] :=1;
  end;

  //Feld links oben und unten (2x3, 1x3, 1x3)
  for x := 21 to 23 do
  begin
    //Feld 1
    Spielfeld[x,3] := 1;
    Spielfeld[x,4] := 1;
    //Feld 2
    Spielfeld[x,6] := 1;
    //Feld 3
    Spielfeld[x,20] := 1;
  end;

  //Feld oben links und unten (2x4, 1x4, 2x4)
  for x := 7 to 10 do
  begin
    //Feld 1
    Spielfeld[x,3] := 1;
    Spielfeld[x,4] := 1;
    //Feld 2
    Spielfeld[x,20] := 1;
    //Feld 3
    Spielfeld[x,22] := 1;
    Spielfeld[x,23] := 1;
  end;

  //Feld oben rechts und unten(2x4, 1x4, 2x4)
  for x := 16 to 19 do
  begin
    //Feld 1
    Spielfeld[x,3] := 1;
    Spielfeld[x,4] := 1;
    //Feld 2
    Spielfeld[x,20] := 1;
    //Feld 3
    Spielfeld[x,22] := 1;
    Spielfeld[x,23] := 1;
  end;

  //Feld mitte oben und unten (2x9, 1x9)
  for x := 9 to 17 do
  begin
    //Feld 1
    Spielfeld[x,6] := 1;
    Spielfeld[x,7] := 1;
    //Feld 2
    Spielfeld[x,18] := 1;
  end;

  //Feld Ausgang Links (4x5)
  for y := 8 to 12 do
  begin
    Spielfeld[2,y] := 1;
    Spielfeld[3,y] := 1;
    Spielfeld[4,y] := 1;
    Spielfeld[5,y] := 1;
  end;

  //Feld Ausgang Links (4x5)
  for y := 14 to 18 do
  begin
    Spielfeld[2,y] := 1;
    Spielfeld[3,y] := 1;
    Spielfeld[4,y] := 1;
    Spielfeld[5,y] := 1;
  end;

  //Feld Ausgang unten rechts und links (4x5)
  for y := 8 to 12 do
  begin
    Spielfeld[21,y] := 1;
    Spielfeld[22,y] := 1;
    Spielfeld[23,y] := 1;
    Spielfeld[24,y] := 1;
  end;
      //Weiß (für rechts)
    for x := 22 to 25 do
    begin
      Spielfeld[x,9] := 0;
      Spielfeld[x,10] := 0;
      Spielfeld[x,11] := 0;
      Spielfeld[x,15] := 0;
      Spielfeld[x,16] := 0;
      Spielfeld[x,17] := 0;
    end;

  //Feld Ausgang oben rechts und links (4x5)
  for y := 14 to 18 do
  begin
    Spielfeld[21,y] := 1;
    Spielfeld[22,y] := 1;
    Spielfeld[23,y] := 1;
    Spielfeld[24,y] := 1;
  end;

  //Weiß beim Ausgang(für links)
  for x := 1 to 4 do
  begin
    Spielfeld[x,9] := 0;
    Spielfeld[x,10] := 0;
    Spielfeld[x,11] := 0;
    Spielfeld[x,15] := 0;
    Spielfeld[x,16] := 0;
    Spielfeld[x,17] := 0;
  end;
  //Weiß beim Ausgang(für rechts)
  for x := 22 to 25 do
  begin
    Spielfeld[x,9] := 0;
    Spielfeld[x,10] := 0;
    Spielfeld[x,11] := 0;
    Spielfeld[x,15] := 0;
    Spielfeld[x,16] := 0;
    Spielfeld[x,17] := 0;
  end;

  //Kasten mitte (9x6)
  for x := 9 to 17 do
  begin
    Spielfeld[x,11] := 1;
    for y := 12 to 15 do
      Spielfeld[x,y] := 0;
    Spielfeld[x,16] := 1;
  end;
  for y := 12 to 15 do
  begin
    Spielfeld[9,y] := 1;
    Spielfeld[17,y] := 1;
  end;

  //Feld mitte oben (2x3)
  for x := 12 to 14 do
  begin
    Spielfeld[x,8] := 1;
    Spielfeld[x,9] := 1;
  end;

  //Feld mitte oben links (1x3)
  for x := 8 to 10 do
  begin
    Spielfeld[x,9] := 1;
  end;

  //Feld mitte oben rechts (1x3)
  for x := 16 to 18 do
  begin
    Spielfeld[x,9] := 1;
  end;

  //Feld rechts (7x1, 5x1)
  for y := 6 to 18 do
  begin
    //Komplettes Feld
    Spielfeld[19,y] := 1;
  end;
  //Ein weißer Platzhalter
  Spielfeld[19,13] := 0;

  //Feld links (7x1, 5x1)
  for y := 6 to 18 do
  begin
    //Komplettes Feld
    Spielfeld[7,y] := 1;
  end;
  //Ein weißer Platzhalter
  Spielfeld[7,13] := 0;

  //Feld unten links und rechts (3x2, 3x2)
  for y := 22 to 24 do
  begin
    //Feld 1
    Spielfeld[2,y] := 1;
    Spielfeld[3,y] := 1;
    //Feld 2
    Spielfeld[23,y] := 1;
    Spielfeld[24,y] := 1;
  end;

  //Feld unten links und rechts (3x1, 3x1)
  for y := 21 to 23 do
  begin
    Spielfeld[5,y] := 1;
    Spielfeld[21,y] := 1;
  end;

  //DrawGrid;
  DrawCells;
end;

{procedure TForm1.DrawGrid;
var
  x,y: Integer;
begin
  for x := 0 to 25 do
  begin
    ImgFeld.Canvas.MoveTo(x*dx,0);
    ImgFeld.Canvas.LineTo(x*dx,25*dy);
  end;
  for y := 0 to 25 do
  begin
    ImgFeld.Canvas.MoveTo(0,y*dy);
    ImgFeld.Canvas.LineTo(25*dx,y*dy);
  end;
end;}

procedure TForm1.DrawCells;
var
  x,y: Integer;
begin
  // Spielfeld zeichnen
  ImgFeld.Canvas.Brush.Color := ClBlack;
  for x := 1 to 25 do
    for y := 1 to 25 do
      begin
      //Farbe für 0
        if Spielfeld[x,y] = 0 then
          ImgFeld.Canvas.Brush.Color := ClWhite
        else
        begin
          //Farbe für 1
          if Spielfeld[x,y] = 1 then
          ImgFeld.Canvas.Brush.Color := ClBlue
          else
          begin
            //Farbe für 2
            if Spielfeld[x,y] = 2 then
            ImgFeld.Canvas.Brush.Color := ClYellow;
            //Möglichkeit für weitere Farben
            {else
            begin
              //Farbe für ZAHL
              if Spielfeld[x,y] = ZAHL then
              ImgFeld.Canvas.Brush.Color := ClFARBE;
            end;}
          end;
        end;
        ImgFeld.Canvas.Rectangle(x*dx,y*dy,(x-1)*dx,(y-1)*dy);
      end;
end;

//Mit Maus malen
{procedure TForm1.ImgFeldMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
var
  FeldX, FeldY : Integer;
begin
  FeldX := (X div dx)+1;
  FeldY := (Y div dy)+1;
  Spielfeld[FeldX, FeldY] := 1;
  DrawCells;
end;}

procedure TForm1.BtnResetClick(Sender: TObject);
begin
  Reset;
end;

end.
