object frm_principal: Tfrm_principal
  Left = 0
  Top = 0
  BorderIcons = []
  Caption = 'Consultar CEP'
  ClientHeight = 405
  ClientWidth = 384
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clGray
  Font.Height = -11
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object mm_result: TMemo
    Left = 204
    Top = 66
    Width = 169
    Height = 43
    TabOrder = 0
  end
  object Panel10: TPanel
    Left = 0
    Top = 0
    Width = 383
    Height = 401
    BevelOuter = bvNone
    TabOrder = 1
    object Label2: TLabel
      Left = 10
      Top = 66
      Width = 19
      Height = 13
      Caption = 'CEP'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 10
      Top = 116
      Width = 48
      Height = 13
      Caption = 'Endere'#231'o'
    end
    object Label4: TLabel
      Left = 10
      Top = 166
      Width = 72
      Height = 13
      Caption = 'Complemento'
    end
    object Label5: TLabel
      Left = 10
      Top = 216
      Width = 30
      Height = 13
      Caption = 'Bairro'
    end
    object Label6: TLabel
      Left = 10
      Top = 266
      Width = 36
      Height = 13
      Caption = 'Cidade'
    end
    object Label7: TLabel
      Left = 344
      Top = 266
      Width = 14
      Height = 13
      Caption = 'UF'
    end
    object Label8: TLabel
      Left = 104
      Top = 66
      Width = 50
      Height = 13
      Caption = 'C'#243'd. IBGE'
    end
    object edt_cep: TEdit
      Left = 10
      Top = 81
      Width = 73
      Height = 21
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object edt_logradouro: TEdit
      Left = 10
      Top = 131
      Width = 362
      Height = 21
      Enabled = False
      TabOrder = 1
    end
    object edt_complemento: TEdit
      Left = 10
      Top = 181
      Width = 362
      Height = 21
      Enabled = False
      TabOrder = 2
    end
    object edt_bairro: TEdit
      Left = 10
      Top = 231
      Width = 362
      Height = 21
      Enabled = False
      TabOrder = 3
    end
    object edt_localidade: TEdit
      Left = 10
      Top = 281
      Width = 322
      Height = 21
      Enabled = False
      TabOrder = 4
    end
    object edt_uf: TEdit
      Left = 344
      Top = 281
      Width = 28
      Height = 21
      Enabled = False
      TabOrder = 5
    end
    object edt_ibge: TEdit
      Left = 104
      Top = 81
      Width = 121
      Height = 21
      Enabled = False
      TabOrder = 6
    end
    object Panel11: TPanel
      Left = 0
      Top = 323
      Width = 383
      Height = 78
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 7
      ExplicitLeft = 1
      ExplicitTop = 322
      ExplicitWidth = 381
      object Panel2: TPanel
        Left = 10
        Top = 22
        Width = 150
        Height = 40
        BevelOuter = bvNone
        Color = clHighlight
        ParentBackground = False
        TabOrder = 0
        object btn_limpar: TSpeedButton
          Left = 0
          Top = 0
          Width = 150
          Height = 40
          Cursor = crHandPoint
          Align = alClient
          Caption = 'Limpar Pesquisa'
          Flat = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindow
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          OnClick = btn_limparClick
          OnMouseEnter = btn_limparMouseEnter
          OnMouseLeave = btn_limparMouseLeave
          ExplicitTop = -5
        end
      end
      object Panel4: TPanel
        Left = 222
        Top = 22
        Width = 150
        Height = 40
        BevelOuter = bvNone
        Color = clMenuHighlight
        ParentBackground = False
        TabOrder = 1
        object btn_fechar: TSpeedButton
          Left = 0
          Top = 0
          Width = 150
          Height = 40
          Cursor = crHandPoint
          Align = alClient
          Caption = 'Fechar'
          Flat = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindow
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          OnClick = btn_fecharClick
          OnMouseEnter = btn_fecharMouseEnter
          OnMouseLeave = btn_fecharMouseLeave
          ExplicitWidth = 151
        end
      end
    end
    object Panel3: TPanel
      Left = 0
      Top = 321
      Width = 383
      Height = 2
      Align = alBottom
      BevelOuter = bvNone
      Color = clMenuHighlight
      ParentBackground = False
      TabOrder = 8
      ExplicitLeft = 2
      ExplicitTop = 314
      ExplicitWidth = 381
    end
    object Panel6: TPanel
      Left = 0
      Top = 0
      Width = 383
      Height = 56
      Align = alTop
      BevelOuter = bvNone
      Color = clWhite
      ParentBackground = False
      TabOrder = 9
      ExplicitLeft = 2
      ExplicitTop = 4
      ExplicitWidth = 381
      DesignSize = (
        383
        56)
      object Panel5: TPanel
        Left = 212
        Top = 20
        Width = 158
        Height = 29
        Anchors = [akTop, akRight]
        BevelOuter = bvNone
        Color = clMenuHighlight
        ParentBackground = False
        TabOrder = 0
        ExplicitLeft = 210
        object btn_pesquisar: TSpeedButton
          Left = 0
          Top = 0
          Width = 158
          Height = 29
          Cursor = crHandPoint
          Align = alClient
          Caption = 'Pesquisar'
          Flat = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindow
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          OnClick = btn_pesquisarClick
          OnMouseEnter = btn_pesquisarMouseEnter
          OnMouseLeave = btn_pesquisarMouseLeave
          ExplicitTop = -5
          ExplicitWidth = 150
          ExplicitHeight = 40
        end
      end
      object Panel7: TPanel
        Left = 10
        Top = 9
        Width = 104
        Height = 40
        BevelOuter = bvNone
        TabOrder = 1
        object Label1: TLabel
          Left = 0
          Top = 0
          Width = 104
          Height = 14
          Align = alTop
          Caption = 'PESQUISAR CEP:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clScrollBar
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ExplicitWidth = 93
        end
        object Panel8: TPanel
          Left = 0
          Top = 39
          Width = 104
          Height = 1
          Align = alBottom
          BevelOuter = bvNone
          Color = clGrayText
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clScrollBar
          Font.Height = -11
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentBackground = False
          ParentFont = False
          TabOrder = 0
        end
        object edt_pesquisa: TEdit
          Left = 0
          Top = 18
          Width = 104
          Height = 21
          Hint = 'Informe apenas n'#250'meros'
          Align = alBottom
          BorderStyle = bsNone
          Font.Charset = DEFAULT_CHARSET
          Font.Color = cl3DDkShadow
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          MaxLength = 8
          NumbersOnly = True
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
        end
        object Panel9: TPanel
          Left = 152
          Top = 0
          Width = 185
          Height = 41
          Caption = 'Panel9'
          TabOrder = 2
        end
      end
      object Panel1: TPanel
        Left = 0
        Top = 54
        Width = 383
        Height = 2
        Align = alBottom
        BevelOuter = bvNone
        Color = clMenuHighlight
        ParentBackground = False
        TabOrder = 2
        ExplicitLeft = 2
        ExplicitTop = 9
        ExplicitWidth = 379
      end
    end
  end
  object RESTClient1: TRESTClient
    Accept = 'application/json, text/plain; q=0.9, text/html;q=0.8,'
    AcceptCharset = 'utf-8, *;q=0.8'
    BaseURL = 'https://viacep.com.br/ws'
    Params = <>
    RaiseExceptionOn500 = False
    Left = 24
    Top = 288
  end
  object RESTRequest1: TRESTRequest
    Client = RESTClient1
    Params = <>
    Resource = '14780580/json/'
    Response = RESTResponse1
    SynchronizedEvents = False
    Left = 88
    Top = 304
  end
  object RESTResponse1: TRESTResponse
    ContentType = 'application/json'
    Left = 168
    Top = 288
  end
  object DataSetAdapter1: TRESTResponseDataSetAdapter
    Dataset = MemTable
    FieldDefs = <>
    Response = RESTResponse1
    Left = 248
    Top = 312
  end
  object MemTable: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired]
    UpdateOptions.CheckRequired = False
    Left = 328
    Top = 296
  end
end
