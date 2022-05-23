object DM: TDM
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Left = 628
  Top = 120
  Height = 549
  Width = 526
  object cdsUsuario: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 120
    Top = 72
    object cdsUsuarioNome: TStringField
      FieldName = 'Nome'
      Size = 50
    end
    object cdsUsuarioEmail: TStringField
      FieldName = 'Email'
      Size = 50
    end
    object cdsUsuarioTelefone: TStringField
      FieldName = 'Telefone'
      Size = 11
    end
    object cdsUsuarioCPF: TStringField
      FieldName = 'CPF'
      Size = 11
    end
    object cdsUsuarioSenha: TStringField
      FieldName = 'Senha'
      Size = 30
    end
  end
end
