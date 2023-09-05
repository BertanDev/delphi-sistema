inherited ViewClientes: TViewClientes
  Caption = 'ViewClientes'
  TextHeight = 15
  inherited Panel2: TPanel
    inherited btnEditar: TSpeedButton
      OnClick = btnEditarClick
    end
    inherited btnNovo: TSpeedButton
      OnClick = btnNovoClick
    end
    inherited btnCancelar: TSpeedButton
      OnClick = btnCancelarClick
    end
    inherited btnSalvar: TSpeedButton
      OnClick = btnSalvarClick
    end
    inherited btnExcluir: TSpeedButton
      OnClick = btnExcluirClick
    end
  end
  inherited cpLista: TCardPanel
    ActiveCard = card_cadastro
    inherited card_pesquisa: TCard
      inherited DBGrid1: TDBGrid
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        Columns = <
          item
            Expanded = False
            FieldName = 'PES_CODIGO'
            Title.Caption = 'C'#243'digo'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PES_RAZAO'
            Title.Caption = 'Nome do cliente'
            Width = 179
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PES_FANTASIA'
            Title.Caption = 'Nome fantasia'
            Width = 163
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PES_TELEFONE'
            Title.Caption = 'Telefone'
            Width = 136
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PES_TIPOPESSOA'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'PES_CNPJCPF'
            Title.Caption = 'CPF / CNPJ'
            Width = 159
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PES_IERG'
            Title.Caption = 'IE / RG'
            Width = 133
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PES_OBSERVACAO'
            Title.Caption = 'OBS'
            Width = 80
            Visible = True
          end>
      end
    end
    inherited card_cadastro: TCard
      ExplicitWidth = 968
      ExplicitHeight = 628
      object Label1: TLabel
        Left = 64
        Top = 104
        Width = 69
        Height = 15
        Caption = 'PES_CODIGO'
        FocusControl = DBEdit1
      end
      object Label2: TLabel
        Left = 256
        Top = 104
        Width = 63
        Height = 15
        Caption = 'PES_RAZAO'
        FocusControl = DBEdit2
      end
      object Label3: TLabel
        Left = 64
        Top = 160
        Width = 76
        Height = 15
        Caption = 'PES_FANTASIA'
        FocusControl = DBEdit3
      end
      object Label4: TLabel
        Left = 432
        Top = 160
        Width = 78
        Height = 15
        Caption = 'PES_TELEFONE'
        FocusControl = DBEdit4
      end
      object Label6: TLabel
        Left = 68
        Top = 231
        Width = 72
        Height = 15
        Caption = 'PES_CNPJCPF'
        FocusControl = DBEdit6
      end
      object Label7: TLabel
        Left = 68
        Top = 288
        Width = 48
        Height = 15
        Caption = 'PES_IERG'
        FocusControl = DBEdit7
      end
      object Label8: TLabel
        Left = 68
        Top = 360
        Width = 98
        Height = 15
        Caption = 'PES_OBSERVACAO'
        FocusControl = DBEdit8
      end
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 1022
        Height = 41
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 0
        ExplicitTop = 8
        object lblCadatroTitulo: TLabel
          Left = 24
          Top = 16
          Width = 47
          Height = 15
          Caption = 'Cadastro'
        end
      end
      object DBEdit1: TDBEdit
        Left = 64
        Top = 120
        Width = 154
        Height = 23
        CharCase = ecUpperCase
        DataField = 'PES_CODIGO'
        DataSource = dsDados
        ReadOnly = True
        TabOrder = 1
      end
      object DBEdit2: TDBEdit
        Left = 256
        Top = 120
        Width = 350
        Height = 23
        CharCase = ecUpperCase
        DataField = 'PES_RAZAO'
        DataSource = dsDados
        TabOrder = 2
      end
      object DBEdit3: TDBEdit
        Left = 64
        Top = 176
        Width = 350
        Height = 23
        CharCase = ecUpperCase
        DataField = 'PES_FANTASIA'
        DataSource = dsDados
        TabOrder = 3
      end
      object DBEdit4: TDBEdit
        Left = 432
        Top = 176
        Width = 200
        Height = 23
        CharCase = ecUpperCase
        DataField = 'PES_TELEFONE'
        DataSource = dsDados
        TabOrder = 4
      end
      object DBEdit6: TDBEdit
        Left = 68
        Top = 247
        Width = 754
        Height = 23
        CharCase = ecUpperCase
        DataField = 'PES_CNPJCPF'
        DataSource = dsDados
        TabOrder = 5
      end
      object DBEdit7: TDBEdit
        Left = 68
        Top = 304
        Width = 754
        Height = 23
        CharCase = ecUpperCase
        DataField = 'PES_IERG'
        DataSource = dsDados
        TabOrder = 6
      end
      object DBEdit8: TDBEdit
        Left = 68
        Top = 376
        Width = 500
        Height = 23
        CharCase = ecUpperCase
        DataField = 'PES_OBSERVACAO'
        DataSource = dsDados
        TabOrder = 7
      end
    end
  end
  inherited dsDados: TDataSource
    DataSet = ServiceCadastro.QRY_pessoas
    Left = 824
    Top = 40
  end
end
