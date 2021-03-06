unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons, Mask, DBCtrlsEh, DB, DBTables,
  Grids, DBGrids;

type
  TForm1 = class(TForm)
    GroupBox1: TGroupBox;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    Label1: TLabel;
    BitBtn1: TBitBtn;
    Button1: TButton;
    ComboBox1: TComboBox;
    Query1: TQuery;
    Query1GlavId: TSmallintField;
    Query1GlavName: TStringField;
    Query1GroupId: TSmallintField;
    BitBtn2: TBitBtn;
    DBGrid1: TDBGrid;
    Label2: TLabel;
    ComboBox2: TComboBox;
    DataSource1: TDataSource;
    Table1: TTable;
    Table1GlavId: TSmallintField;
    Table1GlavName: TStringField;
    Table1GroupId: TSmallintField;
    Table1BaskId: TSmallintField;
    BatchMove1: TBatchMove;
    Edit1: TEdit;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ComboBox1Select(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  glid, gllen: integer;
  glArray: array of integer;
implementation

uses Unit2;

{$R *.dfm}

procedure TForm1.BitBtn1Click(Sender: TObject);
begin
Form2.Show;
end;

procedure TForm1.FormShow(Sender: TObject);
var i: integer;
begin
Query1.Close;
Query1.Open;
gllen:=Query1.RecordCount;
Query1.First;
glid:=Query1GlavId.AsInteger;
i:=0;
SetLength(glarray, gllen);
ComboBox1.Items.Clear;
while not Query1.Eof do
begin
ComboBox1.Items.Add(Query1GlavName.AsString);
glarray[i]:=Query1GlavId.AsInteger;
Query1.Next;
inc(i);
end;
ComboBox1.ItemIndex:=0;
ComboBox2.ItemIndex:=0;
Table1.Close;
Table1.Open;
end;

procedure TForm1.ComboBox1Select(Sender: TObject);
begin
 glid:=glarray[ComboBox1.Items.IndexOf(ComboBox1.Text)];
end;

procedure TForm1.Button1Click(Sender: TObject);
var i, rc, ord: integer;
begin

Form2.Query4.Close;
Form2.Query4.SQL.Clear;
Form2.Query4.SQL.Add(format('update Commands.db set groupid=%d, baskid=%s ',[ComboBox2.Items.IndexOf(ComboBox2.Text)+1, Edit1.Text]));
Form2.Query4.SQL.Add(format('where glavid=%d',[glid]));
Form2.Query4.ExecSQL;
case ComboBox2.Items.IndexOf(ComboBox2.Text)+1 of
1: begin
    Form2.Query3.Close;
    Form2.Query3.SQL.Clear;
    Form2.Query3.SQL.Add('select count(*) tcnt from commands.db ');
    Form2.Query3.SQL.Add('where groupid=1');
    Form2.Query3.Open;
    rc:=Form2.Query3.Fields[0].AsInteger+1;
    Form2.Query2.Close;
    Form2.Query2.SQL.Clear;
    Form2.Query2.SQL.Add('select  glavid, cast(glavname as char(150)) glavname, groupid, baskid from commands ');
    Form2.Query2.SQL.Add('where groupid=1 union all select glavid, cast("������ A" as char(150)) glavname,');
    Form2.Query2.SQL.Add('1 groupid, 0 baskid from commands where glavid=0 ');
    while rc<=5 do
    begin
     Form2.Query2.SQL.Add('union all select 19, cast(" " as char(150)) glavname,');
     Form2.Query2.SQL.Add('1 groupid, 4 baskid from commands where glavid=0 ');
     inc(rc);
    end;
         Form2.Query2.SQL.Add('order by baskid');
    Form2.Query2.Open;
   end;
2: begin
    Form2.Query3.Close;
    Form2.Query3.SQL.Clear;
    Form2.Query3.SQL.Add('select count(*) tcnt from commands.db ');
    Form2.Query3.SQL.Add('where groupid=2');
    Form2.Query3.Open;
    rc:=Form2.Query3.Fields[0].AsInteger+1;
    Form2.Query5.Close;
    Form2.Query5.SQL.Clear;
    Form2.Query5.SQL.Add('select glavid, cast(glavname as char(150)) glavname, groupid, baskid from commands ');
    Form2.Query5.SQL.Add('where groupid=2 union all select glavid, cast("������ B" as char(150)) glavname,');
    Form2.Query5.SQL.Add('2 groupid, 0 baskid from commands where glavid=0 ');
    while rc<=5 do
    begin
     Form2.Query5.SQL.Add('union all select 19, cast(" " as char(150)) glavname,');
     Form2.Query5.SQL.Add('2 groupid, 4 baskid from commands where glavid=0 ');
     inc(rc);
    end;
    Form2.Query5.SQL.Add('order by baskid');
    Form2.Query5.Open;
   end;
3: begin
    Form2.Query3.Close;
    Form2.Query3.SQL.Clear;
    Form2.Query3.SQL.Add('select count(*) tcnt from commands.db ');
    Form2.Query3.SQL.Add('where groupid=3');
    Form2.Query3.Open;
    rc:=Form2.Query3.Fields[0].AsInteger+1;
    Form2.Query6.Close;
    Form2.Query6.SQL.Clear;
    Form2.Query6.SQL.Add('select glavid, cast(glavname as char(150)) glavname, groupid, baskid from commands ');
    Form2.Query6.SQL.Add('where groupid=3 union all select glavid, cast("������ C" as char(150)) glavname,');
    Form2.Query6.SQL.Add('3 groupid, 0 baskid from commands where glavid=0 ');
    while rc<=5 do
    begin
     Form2.Query6.SQL.Add('union all select 19, cast(" " as char(150)) glavname,');
     Form2.Query6.SQL.Add('3 groupid, 4 baskid from commands where glavid=0 ');
     inc(rc);
    end;
    Form2.Query6.SQL.Add('order by baskid');
    Form2.Query6.Open;
   end;
4: begin

    Form2.Query3.Close;
    Form2.Query3.SQL.Clear;
    Form2.Query3.SQL.Add('select count(*) tcnt from commands.db ');
    Form2.Query3.SQL.Add('where groupid=4');
    Form2.Query3.Open;
    rc:=Form2.Query3.Fields[0].AsInteger+1;

    Form2.Query7.Close;
    Form2.Query7.SQL.Clear;
    Form2.Query7.SQL.Add('select glavid, cast(glavname as char(150)) glavname, groupid, baskid from commands ');
    Form2.Query7.SQL.Add('where groupid=4 union all select glavid, cast("������ D" as char(150)) glavname,');
    Form2.Query7.SQL.Add('4 groupid, 0 baskid from commands where glavid=0 ');

    while rc<=5 do
    begin
     Form2.Query7.SQL.Add('union all select 19, cast(" " as char(150)) glavname,');
     Form2.Query7.SQL.Add('4 groupid, 4 baskid from commands where glavid=0 ');
     inc(rc);
    end;
    Form2.Query7.SQL.Add('order by baskid');
    Form2.Query7.Open;
   end;
end;

Query1.Close;
Query1.Open;
gllen:=Query1.RecordCount;
Query1.First;
glid:=Query1GlavId.AsInteger;
i:=0;
SetLength(glarray, gllen);
ComboBox1.Items.Clear;
while not Query1.Eof do
begin
ComboBox1.Items.Add(Query1GlavName.AsString);
glarray[i]:=Query1GlavId.AsInteger;
Query1.Next;
inc(i);
end;
ComboBox1.ItemIndex:=0;
ComboBox2.ItemIndex:=0;
form2.Query1.Close;
form2.Query1.Open;
if Form2.Query1.RecordCount=1 then
begin
 Form2.DBGridEh2.Width:=Form2.DBGridEh2.Width+round(Form2.DBGridEh1.Width/2);
 Form2.DBGridEh3.Width:=Form2.DBGridEh3.Width+round(Form2.DBGridEh1.Width/2);
 Form2.DBGridEh5.Width:= Form2.DBGridEh3.Width;
 Form2.DBGridEh2.Left:=10;
 Form2.DBGridEh4.Width:=Form2.DBGridEh2.Width;
 Form2.DBGridEh2.Columns[1].Width:=Form2.DBGridEh2.ClientWidth-135;
 Form2.DBGridEh3.Columns[1].Width:=Form2.DBGridEh3.ClientWidth-135;
 Form2.DBGridEh4.Columns[1].Width:=Form2.DBGridEh4.ClientWidth-135;
 Form2.DBGridEh5.Columns[1].Width:=Form2.DBGridEh5.ClientWidth-135;
 Form2.DBGridEh4.Left:=10;
 Form2.DBGridEh3.Left:=Form2.Image1.Width-20-Form2.DBGridEh3.Width;
  Form2.DBGridEh5.Left:=Form2.Image1.Width-20-Form2.DBGridEh5.Width;

 Form2.DBGridEh1.Visible:=false;

end;
Table1.Close;
Table1.Open;
end;

procedure TForm1.BitBtn2Click(Sender: TObject);
begin
Form2.Query1.Close;
Form2.Query1.Open;

Form2.Query2.Close;
Form2.Query2.Open;



Form2.Query5.Close;
Form2.Query5.Open;

Form2.Query6.Close;
Form2.Query6.Open;
Form2.Query7.Close;
Form2.Query7.Open;
Table1.Close;
Table1.Open;

end;

end.
