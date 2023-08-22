unit Unit2;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.ListView.Types, FMX.ListView.Appearances, FMX.ListView.Adapters.Base,
  FMX.ListView, FMX.StdCtrls, FMX.Edit, FMX.Controls.Presentation,
  Data.Bind.EngExt, Fmx.Bind.DBEngExt, Data.Bind.Components, Data.Bind.DBScope,
  System.Rtti, System.Bindings.Outputs, Fmx.Bind.Editors;

type
  TForm2 = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    txtnome: TEdit;
    Button1: TButton;
    ListView1: TListView;
    Label3: TLabel;
    txtfone: TEdit;
    BindingsList1: TBindingsList;
    BindSourceDB1: TBindSourceDB;
    BindSourceDB2: TBindSourceDB;
    LinkListControlToField1: TLinkListControlToField;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.fmx}

uses Unit5;

procedure TForm2.Button1Click(Sender: TObject);
begin
dm.conexao.Connected:=true;
dm.query.SQL.Clear;
dm.query.Sql.Add('insert into clientes (nome, fone) values (:nome, :fone)');
dm.query.ParamByName('nome').AsString:= txtnome.text;
dm.query.ParamByName('fone').AsString:= txtfone.text;
dm.query.ExecSQL;
showmessage('Dados salvos com sucesso');
dm.listar();
end;

end.
