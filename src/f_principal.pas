unit f_principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, REST.Types, REST.Client,
  Data.Bind.Components, Data.Bind.ObjectScope, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, REST.Response.Adapter, Vcl.ExtCtrls, Vcl.Buttons;

type
  Tfrm_principal = class(TForm)
    mm_result: TMemo;
    RESTClient1: TRESTClient;
    RESTRequest1: TRESTRequest;
    RESTResponse1: TRESTResponse;
    DataSetAdapter1: TRESTResponseDataSetAdapter;
    MemTable: TFDMemTable;
    Panel10: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    edt_cep: TEdit;
    edt_logradouro: TEdit;
    edt_complemento: TEdit;
    edt_bairro: TEdit;
    edt_localidade: TEdit;
    edt_uf: TEdit;
    edt_ibge: TEdit;
    Panel11: TPanel;
    Panel2: TPanel;
    btn_limpar: TSpeedButton;
    Panel4: TPanel;
    btn_fechar: TSpeedButton;
    Panel3: TPanel;
    Panel6: TPanel;
    Panel5: TPanel;
    btn_pesquisar: TSpeedButton;
    Panel7: TPanel;
    Label1: TLabel;
    Panel8: TPanel;
    edt_pesquisa: TEdit;
    Panel9: TPanel;
    Panel1: TPanel;
    procedure btn_fecharClick(Sender: TObject);
    procedure btn_limparMouseEnter(Sender: TObject);
    procedure btn_limparMouseLeave(Sender: TObject);
    procedure btn_fecharMouseEnter(Sender: TObject);
    procedure btn_fecharMouseLeave(Sender: TObject);
    procedure btn_limparClick(Sender: TObject);
    procedure btn_pesquisarClick(Sender: TObject);
    procedure btn_pesquisarMouseEnter(Sender: TObject);
    procedure btn_pesquisarMouseLeave(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_principal: Tfrm_principal;

implementation

{$R *.dfm}

procedure Tfrm_principal.btn_limparClick(Sender: TObject);
begin
  mm_result.Clear;

  edt_cep.Clear;
  edt_logradouro.Clear;
  edt_complemento.Clear;
  edt_bairro.Clear;
  edt_localidade.Clear;
  edt_uf.Clear;
  edt_ibge.Clear;
end;

procedure Tfrm_principal.btn_limparMouseEnter(Sender: TObject);
begin
  Panel2.Color := clNavy;
end;

procedure Tfrm_principal.btn_limparMouseLeave(Sender: TObject);
begin
  Panel2.Color := clHighlight;
end;

procedure Tfrm_principal.btn_fecharClick(Sender: TObject);
begin
  if Application.MessageBox('O sistema ser? fechado.', 'Aviso', Mb_IconInformation + Mb_OkCancel) = IdOk then
  begin
    edt_pesquisa.SetFocus;
    Close;
  end;
end;

procedure Tfrm_principal.btn_fecharMouseEnter(Sender: TObject);
begin
  Panel4.Color := clNavy;
end;

procedure Tfrm_principal.btn_fecharMouseLeave(Sender: TObject);
begin
  Panel4.Color := clHighlight;
end;

procedure Tfrm_principal.btn_pesquisarClick(Sender: TObject);
begin
  if edt_pesquisa.Text = '' then
  begin
    Application.MessageBox('O CEP n?o foi informado', 'Aviso', Mb_IconInformation + Mb_Ok);
    edt_pesquisa.SetFocus;
    Exit;
  end;

  if (length(edt_pesquisa.Text) <= 7)  or (length(edt_pesquisa.Text) >=9) then
  begin
    Application.MessageBox('O CEP informado est? fora do formato esperado!' +#10+
                'Informe o CEP corretamente.', 'Aviso', Mb_IconInformation + Mb_Ok);
      edt_pesquisa.SetFocus;
    Exit;
  end;

  mm_result.Clear;

  RESTRequest1.Resource := edt_pesquisa.Text + '/json';
  RESTRequest1.Execute;

  if RESTRequest1.Response.StatusCode = 200 then
  begin
    if RESTRequest1.Response.Content.IndexOf('erro') > 0 then
       Application.MessageBox('Cep n?o encontrado!' +#10+
                   'Verifique se digitou corretamente.','Aviso', MB_ICONINFORMATION + MB_OK)
    else
    begin
      with MemTable do
      begin
        mm_result.Lines.Add(RESTRequest1.Response.JSONText);
        edt_cep.Text         := FieldByName('CEP').AsString;
        edt_logradouro.Text  := FieldByName('LOGRADOURO').AsString;
        edt_complemento.Text := FieldByName('COMPLEMENTO').AsString;
        edt_bairro.Text      := FieldByName('BAIRRO').AsString;
        edt_localidade.Text  := FieldByName('LOCALIDADE').AsString;
        edt_uf.Text          := FieldByName('UF').AsString;
        edt_ibge.Text        := FieldByName('IBGE').AsString;
      end;
      edt_pesquisa.Clear;
    end;
  end;
end;

procedure Tfrm_principal.btn_pesquisarMouseEnter(Sender: TObject);
begin
  Panel5.Color := clNavy;
end;

procedure Tfrm_principal.btn_pesquisarMouseLeave(Sender: TObject);
begin
  Panel5.Color := clHighlight;
end;

end.
