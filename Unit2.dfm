object frmCadastro: TfrmCadastro
  Left = 1226
  Top = 122
  ActiveControl = Button1
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = '.:Oliver Trade:. Cadastro'
  ClientHeight = 361
  ClientWidth = 484
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnShow = FormShow
  DesignSize = (
    484
    361)
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 80
    Top = 80
    Width = 46
    Height = 16
    Caption = 'Nome:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clTeal
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 80
    Top = 112
    Width = 49
    Height = 16
    Caption = 'E-mail:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clTeal
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 80
    Top = 144
    Width = 67
    Height = 16
    Caption = 'Telefone:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clTeal
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 80
    Top = 176
    Width = 34
    Height = 16
    Caption = 'CPF:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clTeal
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label5: TLabel
    Left = 80
    Top = 208
    Width = 49
    Height = 16
    Caption = 'Senha:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clTeal
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label6: TLabel
    Left = 80
    Top = 240
    Width = 140
    Height = 16
    Caption = 'Confirma'#231#227'o Senha:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clTeal
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label7: TLabel
    Left = 201
    Top = 20
    Width = 97
    Height = 20
    Alignment = taCenter
    Anchors = [akLeft, akTop, akRight]
    Caption = 'CADASTRO'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clTeal
    Font.Height = -16
    Font.Name = 'SegoIA UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object edtNome: TEdit
    Left = 260
    Top = 72
    Width = 121
    Height = 22
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clTeal
    Font.Height = -11
    Font.Name = 'Segoia ui'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
  end
  object edtEmail: TEdit
    Left = 260
    Top = 104
    Width = 121
    Height = 22
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clTeal
    Font.Height = -11
    Font.Name = 'Segoia ui'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
  end
  object edtSenha: TEdit
    Left = 260
    Top = 208
    Width = 121
    Height = 22
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clTeal
    Font.Height = -11
    Font.Name = 'Segoia ui'
    Font.Style = []
    ParentFont = False
    PasswordChar = '*'
    TabOrder = 4
  end
  object edtCSenha: TEdit
    Left = 260
    Top = 240
    Width = 121
    Height = 22
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clTeal
    Font.Height = -11
    Font.Name = 'Segoia ui'
    Font.Style = []
    ParentFont = False
    PasswordChar = '*'
    TabOrder = 5
  end
  object Button1: TButton
    Left = 204
    Top = 296
    Width = 93
    Height = 25
    Cursor = crHandPoint
    Caption = 'CADASTRAR'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Segoia ui'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 6
    OnClick = Button1Click
  end
  object edtTelefone: TMaskEdit
    Left = 260
    Top = 136
    Width = 115
    Height = 22
    EditMask = '!\(99\)99999-9999;1;_'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clTeal
    Font.Height = -11
    Font.Name = 'Segoia ui'
    Font.Style = []
    MaxLength = 14
    ParentFont = False
    TabOrder = 2
    Text = '(  )     -    '
  end
  object edtCPF: TMaskEdit
    Left = 260
    Top = 168
    Width = 118
    Height = 22
    EditMask = '999.999.999-99;1;_'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clTeal
    Font.Height = -11
    Font.Name = 'Segoia ui'
    Font.Style = []
    MaxLength = 14
    ParentFont = False
    TabOrder = 3
    Text = '   .   .   -  '
  end
end
