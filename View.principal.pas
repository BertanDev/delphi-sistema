unit View.principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Buttons,
  Vcl.Imaging.pngimage, System.Actions, Vcl.ActnList, System.ImageList,
  Vcl.ImgList, Provider.constants, View.clientes;

type
  TViewPrincipal = class(TForm)
    Panel1: TPanel;
    pnlMenu: TPanel;
    pnlBackPrincipal: TPanel;
    pnlRodape: TPanel;
    pnlLogo: TPanel;
    pnlLineLogo: TPanel;
    pnlConteudoLogo: TPanel;
    lblTituloEmpresa: TLabel;
    lblDescricaoEmpresa: TLabel;
    pnlVersao: TPanel;
    lblVersao: TLabel;
    lblNumeroVersao: TLabel;
    pnlUsuario: TPanel;
    pnlLineUsuario: TPanel;
    pnlImagemUsuario: TPanel;
    imgUsuarioBranca: TImage;
    pnlDadosUsuario: TPanel;
    lblNomeUsuario: TLabel;
    lblCargoUsuario: TLabel;
    pnlLicenciado: TPanel;
    pnlLineLicenciado: TPanel;
    pnlContedoLicenca: TPanel;
    Label2: TLabel;
    lblEmpresaLicenca: TLabel;
    pnlSair: TPanel;
    pnlShapeMenu: TPanel;
    ShapeMenu: TShape;
    pnlDadosMenu: TPanel;
    btnConfiguracoes: TSpeedButton;
    btnClientes: TSpeedButton;
    btnCaixa: TSpeedButton;
    btnFornecedores: TSpeedButton;
    btnProdutos: TSpeedButton;
    btnSair: TSpeedButton;
    imgUsuarioLaranja: TImage;
    procedure btnSairClick(Sender: TObject);
    procedure btnClientesClick(Sender: TObject);
    procedure btnCaixaClick(Sender: TObject);
    procedure btnProdutosClick(Sender: TObject);
    procedure btnFornecedoresClick(Sender: TObject);
    procedure btnConfiguracoesClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure lblTituloEmpresaMouseEnter(Sender: TObject);
    procedure lblTituloEmpresaMouseLeave(Sender: TObject);
    procedure imgUsuarioBrancaMouseEnter(Sender: TObject);
    procedure imgUsuarioLaranjaMouseLeave(Sender: TObject);
  private
    procedure GET_LineMENU(Sender: TObject);
  public
    { Public declarations }
  end;

var
  ViewPrincipal: TViewPrincipal;

implementation

{$R *.dfm}

procedure TViewPrincipal.btnCaixaClick(Sender: TObject);
begin // caixa
  GET_LineMENU(Sender);
end;

procedure TViewPrincipal.btnClientesClick(Sender: TObject);
begin // clientes
  GET_LineMENU(Sender);
  ViewClientes := TViewClientes.Create(Self);
  try
    ViewClientes.ShowModal();
  finally
    FreeAndNil(ViewClientes);
  end;
end;

procedure TViewPrincipal.btnConfiguracoesClick(Sender: TObject);
begin // config
  GET_LineMENU(Sender);
end;

procedure TViewPrincipal.btnFornecedoresClick(Sender: TObject);
begin // fornecedores
  GET_LineMENU(Sender);
end;

procedure TViewPrincipal.btnProdutosClick(Sender: TObject);
begin // produtos
  GET_LineMENU(Sender);
end;

procedure TViewPrincipal.btnSairClick(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TViewPrincipal.FormShow(Sender: TObject);
begin
  GET_LineMENU(btnClientes);
  lblEmpresaLicenca.Caption := sRAZAO_FILIAL;
end;

procedure TViewPrincipal.GET_LineMENU(Sender: TObject);
begin
  ShapeMenu.Left := 0;
  ShapeMenu.Top := 0;
  ShapeMenu.Height := TSpeedButton(Sender).Height;
  ShapeMenu.Top := TSpeedButton(Sender).Top;
  pnlShapeMenu.Repaint;
end;

procedure TViewPrincipal.imgUsuarioBrancaMouseEnter(Sender: TObject);
begin
  imgUsuarioBranca.Visible := False;
  imgUsuarioLaranja.Visible := True;
end;

procedure TViewPrincipal.imgUsuarioLaranjaMouseLeave(Sender: TObject);
begin
  imgUsuarioBranca.Visible := True;
  imgUsuarioLaranja.Visible := False;
end;

procedure TViewPrincipal.lblTituloEmpresaMouseEnter(Sender: TObject);
begin
  lblTituloEmpresa.Font.Color := $000FBBD9;
end;

procedure TViewPrincipal.lblTituloEmpresaMouseLeave(Sender: TObject);
begin
  lblTituloEmpresa.Font.Color := clWhite;
end;

end.
