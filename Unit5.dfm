object dm: Tdm
  OldCreateOrder = False
  Height = 261
  Width = 346
  object conexao: TFDConnection
    Params.Strings = (
      'Database=C:\AppCadastro\teste.db'
      'LockingMode=Normal'
      'DriverID=SQLite')
    Connected = True
    LoginPrompt = False
    Left = 40
    Top = 80
  end
  object query: TFDQuery
    Active = True
    Connection = conexao
    SQL.Strings = (
      'select * from clientes;')
    Left = 128
    Top = 136
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'FMX'
    Left = 160
    Top = 32
  end
end
