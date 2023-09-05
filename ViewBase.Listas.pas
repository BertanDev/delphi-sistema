unit ViewBase.Listas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, View.base, Vcl.ExtCtrls, Vcl.Buttons,
  Vcl.WinXPanels, Vcl.ComCtrls, Vcl.StdCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.WinXCtrls;

type
  TViewBaseListas = class(TViewBase)
    Panel1: TPanel;
    Panel2: TPanel;
    btnEditar: TSpeedButton;
    btnNovo: TSpeedButton;
    btnCancelar: TSpeedButton;
    btnSalvar: TSpeedButton;
    cpLista: TCardPanel;
    card_pesquisa: TCard;
    btnExcluir: TSpeedButton;
    card_cadastro: TCard;
    pnlTituloPesquisa: TPanel;
    lblTituloPesquisa: TLabel;
    edtPesquisa: TSearchBox;
    DBGrid1: TDBGrid;
    dsDados: TDataSource;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ViewBaseListas: TViewBaseListas;

implementation

{$R *.dfm}

procedure TViewBaseListas.FormShow(Sender: TObject);
begin
  inherited;
  cpLista.ActiveCard := card_pesquisa;
end;

end.
