unit View.clientes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ViewBase.Listas, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.WinXCtrls, Vcl.WinXPanels, Vcl.Buttons,
  Vcl.ExtCtrls, Service.cadastro, Vcl.Mask, Vcl.DBCtrls, Provider.constants;

type
  TViewClientes = class(TViewBaseListas)
    Panel3: TPanel;
    lblCadatroTitulo: TLabel;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    Label8: TLabel;
    DBEdit8: TDBEdit;
    procedure FormShow(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
  private
    { Private declarations }
  public
  end;

var
  ViewClientes: TViewClientes;

implementation

{$R *.dfm}

{ TViewClientes }

procedure TViewClientes.btnCancelarClick(Sender: TObject);
begin
  inherited;
  if ServiceCadastro.QRY_pessoas.State in dsEditModes then
  begin
    ServiceCadastro.QRY_pessoas.Cancel;
    cpLista.ActiveCard := card_pesquisa;
  end;
end;

procedure TViewClientes.btnEditarClick(Sender: TObject);
begin
  inherited;
  cpLista.ActiveCard := card_cadastro;
  DBEdit2.SetFocus;
  ServiceCadastro.QRY_pessoas.Edit;
end;

procedure TViewClientes.btnExcluirClick(Sender: TObject);
begin
  inherited;
  if ServiceCadastro.QRY_pessoas.RecordCount > 0 then
  begin
    ServiceCadastro.QRY_pessoas.Delete;
    ShowMessage('Registro excluído!');
    cpLista.ActiveCard := card_pesquisa;
  end;

end;

procedure TViewClientes.btnNovoClick(Sender: TObject);
begin
  inherited;
  cpLista.ActiveCard := card_cadastro;
  DBEdit2.SetFocus;
  ServiceCadastro.QRY_pessoas.Insert;
end;

procedure TViewClientes.btnSalvarClick(Sender: TObject);
begin
  inherited;
  if ServiceCadastro.QRY_pessoas.State in dsEditModes then
  begin
    ServiceCadastro.QRY_pessoasPES_TIPOPESSOA.AsInteger := 1;
    ServiceCadastro.QRY_pessoas.Post;
    ShowMessage('Cliente cadastrado com sucesso!');
    cpLista.ActiveCard := card_pesquisa;
  end;

  {ServiceCadastro.QRY_pessoas.Edit;
  ServiceCadastro.QRY_pessoas.Post;
  cpLista.ActiveCard := card_pesquisa;}
end;

procedure TViewClientes.FormShow(Sender: TObject);
begin
  inherited;
  GET_Pessoas(1);
end;

end.
