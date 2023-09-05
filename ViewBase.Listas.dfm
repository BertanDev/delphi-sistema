inherited ViewBaseListas: TViewBaseListas
  BorderStyle = bsNone
  Caption = ''
  ClientHeight = 550
  ClientWidth = 1024
  Position = poMainFormCenter
  OnShow = FormShow
  ExplicitWidth = 1024
  ExplicitHeight = 550
  TextHeight = 15
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1024
    Height = 35
    Align = alTop
    BevelOuter = bvNone
    Color = clMedGray
    ParentBackground = False
    TabOrder = 0
    ExplicitWidth = 970
  end
  object Panel2: TPanel
    Left = 0
    Top = 515
    Width = 1024
    Height = 35
    Align = alBottom
    BevelOuter = bvNone
    Color = clMedGray
    ParentBackground = False
    TabOrder = 1
    ExplicitTop = 665
    ExplicitWidth = 970
    object btnEditar: TSpeedButton
      Left = 950
      Top = 0
      Width = 74
      Height = 35
      Cursor = crHandPoint
      Align = alRight
      Caption = 'EDITAR'
      ExplicitLeft = 896
    end
    object btnNovo: TSpeedButton
      Left = 728
      Top = 0
      Width = 74
      Height = 35
      Cursor = crHandPoint
      Align = alRight
      Caption = 'NOVO'
      ExplicitLeft = 896
    end
    object btnCancelar: TSpeedButton
      Left = 876
      Top = 0
      Width = 74
      Height = 35
      Cursor = crHandPoint
      Align = alRight
      Caption = 'CANCELAR'
      ExplicitLeft = 896
    end
    object btnSalvar: TSpeedButton
      Left = 660
      Top = 0
      Width = 68
      Height = 35
      Cursor = crHandPoint
      Align = alRight
      Caption = 'SALVAR'
      ExplicitLeft = 680
    end
    object btnExcluir: TSpeedButton
      Left = 802
      Top = 0
      Width = 74
      Height = 35
      Cursor = crHandPoint
      Align = alRight
      Caption = 'EXCLUIR'
      ExplicitLeft = 896
    end
  end
  object cpLista: TCardPanel
    Left = 0
    Top = 35
    Width = 1024
    Height = 480
    Align = alClient
    ActiveCard = card_pesquisa
    TabOrder = 2
    ExplicitWidth = 970
    ExplicitHeight = 630
    object card_pesquisa: TCard
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 1016
      Height = 472
      Alignment = taRightJustify
      Caption = 'card_pesquisa'
      CardIndex = 0
      Color = clWhite
      ParentBackground = False
      TabOrder = 0
      ExplicitWidth = 962
      ExplicitHeight = 622
      object pnlTituloPesquisa: TPanel
        Left = 0
        Top = 0
        Width = 1016
        Height = 41
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 0
        ExplicitTop = 2
        object lblTituloPesquisa: TLabel
          Left = 24
          Top = 16
          Width = 46
          Height = 15
          Caption = 'Pesquisa'
        end
        object edtPesquisa: TSearchBox
          Left = 112
          Top = 16
          Width = 825
          Height = 23
          TabOrder = 0
          Text = 'edtPesquisa'
        end
      end
      object DBGrid1: TDBGrid
        Left = 0
        Top = 41
        Width = 1016
        Height = 431
        Align = alClient
        DataSource = dsDados
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -12
        TitleFont.Name = 'Segoe UI'
        TitleFont.Style = []
      end
    end
    object card_cadastro: TCard
      Left = 1
      Top = 1
      Width = 1022
      Height = 478
      Caption = 'card_cadastro'
      CardIndex = 1
      TabOrder = 1
    end
  end
  object dsDados: TDataSource
    Left = 752
    Top = 376
  end
end
