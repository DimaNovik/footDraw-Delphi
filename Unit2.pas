unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls, StdCtrls,  DBGridEhGrouping,
  ToolCtrlsEh, DBGridEhToolCtrls, GridsEh, DBGridEh, DB, DBTables, ImgList,
  EhLibJPegImage;

type
  TForm2 = class(TForm)
    Image1: TImage;
    Image2: TImage;
    Database1: TDatabase;
    Query1: TQuery;
    Query1GlavId: TSmallintField;
    Query1GlavName: TStringField;
    Query1GroupId: TSmallintField;
    DataSource1: TDataSource;
    DBGridEh1: TDBGridEh;
    ImageList1: TImageList;
    DBGridEh2: TDBGridEh;
    DBGridEh3: TDBGridEh;
    DBGridEh4: TDBGridEh;
    Query2: TQuery;
    DataSource2: TDataSource;
    Query3: TQuery;
    Label5: TLabel;
    Query2GlavId: TSmallintField;
    Query2GlavName: TStringField;
    Query2GroupId: TSmallintField;
    Query4: TQuery;
    Query3tcnt: TIntegerField;
    DataSource3: TDataSource;
    DataSource4: TDataSource;
    Query5: TQuery;
    Query6: TQuery;
    Query5GlavId: TSmallintField;
    Query5GlavName: TStringField;
    Query5GroupId: TSmallintField;
    Query6GlavId: TSmallintField;
    Query6GlavName: TStringField;
    Query6GroupId: TSmallintField;
    ImageList2: TImageList;
    Image4: TImage;
    DBGridEh5: TDBGridEh;
    DataSource5: TDataSource;
    Query7: TQuery;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

uses Unit1;

{$R *.dfm}

procedure TForm2.FormShow(Sender: TObject);
var
w:double;
 h:double;
 rc: integer;
begin

if Screen.MonitorCount>1 then
  Left:=Screen.Monitors[1].Left;
  w:=Screen.Monitors[1].Width / Screen.Monitors[0].Width;
  h:= Screen.Monitors[1].Height / Screen.Monitors[0].Height;
  image2.Height:=round(Image2.Height*h);
  image2.Width:=round(Image2.Width*w);

DBGridEh1.RowHeight:=40;
form2.Query1.Close;
form2.Query1.Open;
if Form2.Query1.RecordCount=1 then
begin
 Form2.DBGridEh2.Width:=Form2.DBGridEh2.Width+round(Form2.DBGridEh1.Width/2);
 Form2.DBGridEh3.Width:=Form2.DBGridEh3.Width+round(Form2.DBGridEh1.Width/2);
 Form2.DBGridEh2.Left:=10;
 Form2.DBGridEh4.Width:=Form2.DBGridEh2.Width;
 Form2.DBGridEh2.Columns[1].Width:=Form2.DBGridEh2.ClientWidth-135;
 Form2.DBGridEh3.Columns[1].Width:=Form2.DBGridEh3.ClientWidth-135;
 Form2.DBGridEh4.Columns[1].Width:=Form2.DBGridEh4.ClientWidth-135;
// Form2.DBGridEh5.Columns[1].Width:=Form2.DBGridEh5.ClientWidth-135;
 Form2.DBGridEh4.Left:=10;
 Form2.DBGridEh3.Left:=Form2.Image1.Width-20-Form2.DBGridEh3.Width;
 Form2.DBGridEh1.Visible:=false;

end;
    Form2.Query3.Close;
    Form2.Query3.SQL.Clear;
    Form2.Query3.SQL.Add('select count(*) tcnt from commands.db ');
    Form2.Query3.SQL.Add('where groupid=1');
    Form2.Query3.Open;
    rc:=Form2.Query3.Fields[0].AsInteger+1;
    Form2.Query2.Close;
    Form2.Query2.SQL.Clear;
    Form2.Query2.SQL.Add('select glavid, cast(glavname as char(150)) glavname, groupid, baskid from commands ');
    Form2.Query2.SQL.Add('where groupid=1 union all select glavid, cast("Группа A" as char(150)) glavname,');
    Form2.Query2.SQL.Add('1 groupid, 0 baskid from commands where glavid=0 ');
    while rc<=5 do
    begin
     Form2.Query2.SQL.Add('union all select 19, cast(" " as char(150)) glavname,');
     Form2.Query2.SQL.Add('1 groupid, 4 baskid from commands where glavid=0 ');
     inc(rc);
    end;
     Form2.Query2.SQL.Add('order by baskid');
    Form2.Query2.Open;
    Form2.Query3.Close;
    Form2.Query3.SQL.Clear;
    Form2.Query3.SQL.Add('select count(*) tcnt from commands.db ');
    Form2.Query3.SQL.Add('where groupid=2');
    Form2.Query3.Open;
    rc:=Form2.Query3.Fields[0].AsInteger+1;
    Form2.Query5.Close;
    Form2.Query5.SQL.Clear;
    Form2.Query5.SQL.Add('select glavid, cast(glavname as char(150)) glavname, groupid, baskid from commands ');
    Form2.Query5.SQL.Add('where groupid=2 union all select glavid, cast("Группа B" as char(150)) glavname,');
    Form2.Query5.SQL.Add('2 groupid, 0 baskid from commands where glavid=0 ');
    while rc<=5 do
    begin
     Form2.Query5.SQL.Add('union all select 19, cast(" " as char(150)) glavname,');
     Form2.Query5.SQL.Add('2 groupid, 4 baskid from commands where glavid=0 ');
     inc(rc);
    end;
    Form2.Query5.SQL.Add('order by baskid');
    Form2.Query5.Open;
    Form2.Query3.Close;
    Form2.Query3.SQL.Clear;
    Form2.Query3.SQL.Add('select count(*) tcnt from commands.db ');
    Form2.Query3.SQL.Add('where groupid=3');
    Form2.Query3.Open;
    rc:=Form2.Query3.Fields[0].AsInteger+1;
    Form2.Query6.Close;
    Form2.Query6.SQL.Clear;
    Form2.Query6.SQL.Add('select glavid, cast(glavname as char(150)) glavname, groupid, baskid from commands ');
    Form2.Query6.SQL.Add('where groupid=3 union all select glavid, cast("Группа C" as char(150)) glavname,');
    Form2.Query6.SQL.Add('3 groupid, 0 baskid from commands where glavid=0 ');
    while rc<=5 do
    begin
     Form2.Query6.SQL.Add('union all select 19, cast(" " as char(150)) glavname,');
     Form2.Query6.SQL.Add('3 groupid, 4 baskid  from commands where glavid=0 ');
     inc(rc);
    end;
   Form2.Query6.SQL.Add('order by baskid');
    Form2.Query6.Open;

    //для группы Д
     Form2.Query3.Close;
    Form2.Query3.SQL.Clear;
    Form2.Query3.SQL.Add('select count(*) tcnt from commands.db ');
    Form2.Query3.SQL.Add('where groupid=4');
    Form2.Query3.Open;
    rc:=Form2.Query3.Fields[0].AsInteger+1;
    Form2.Query7.Close;
    Form2.Query7.SQL.Clear;
    Form2.Query7.SQL.Add('select glavid, cast(glavname as char(150)) glavname, groupid, baskid from commands ');
    Form2.Query7.SQL.Add('where groupid=4 union all select glavid, cast("Группа D" as char(150)) glavname,');
    Form2.Query7.SQL.Add('4 groupid, 0 baskid from commands where glavid=0 ');
    while rc<=5 do
    begin
     Form2.Query7.SQL.Add('union all select 19, cast(" " as char(150)) glavname,');
     Form2.Query7.SQL.Add('4 groupid, 4 baskid  from commands where glavid=0 ');
     inc(rc);
    end;
    Form2.Query7.SQL.Add('order by baskid');
    Form2.Query7.Open;


    form1.ComboBox1.SetFocus;

end;

end.
