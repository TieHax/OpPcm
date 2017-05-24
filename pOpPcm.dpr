program pOpPcm;

uses
  Forms,
  uOpPcm_main in 'uOpPcm_main.pas' {OpPcm_main},
  uOpPcm_settings in 'uOpPcm_settings.pas' {OpPcm_settings};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TOpPcm_main, OpPcm_main);
  Application.CreateForm(TOpPcm_settings, OpPcm_settings);
  Application.Run;
end.
