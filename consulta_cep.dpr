program consulta_cep;

uses
  Vcl.Forms,
  f_principal in 'src\f_principal.pas' {frm_principal};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(Tfrm_principal, frm_principal);
  Application.Run;
end.
