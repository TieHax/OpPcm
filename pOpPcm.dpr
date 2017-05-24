program pOpPcm;

uses
  Forms,
  uOpPcm_main in 'uOpPcm_main.pas' {OpPcm_main};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TOpPcm_main, OpPcm_main);
  Application.Run;
end.
