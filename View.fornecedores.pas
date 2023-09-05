unit View.fornecedores;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ViewBase.Listas, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.WinXCtrls, Vcl.WinXPanels, Vcl.Buttons,
  Vcl.ExtCtrls, Service.cadastro, Provider.constants;

type
  TView = class(TViewBaseListas)
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  View: TView;

implementation

{$R *.dfm}

procedure TView.FormShow(Sender: TObject);
begin
  inherited;
  GET_Pessoas(2);
end;

end.
