unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, ExtCtrls, DBCtrls, DB, ZAbstractRODataset,
  ZAbstractDataset, ZAbstractTable, ZDataset, ZAbstractConnection, ZConnection,
  StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    procedure Button1Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin

  // Compare Method 1
  if 'a' < 'B' then
      ShowMessage('Collected Order')
  else
      ShowMessage('ASCII Order');

  // Compare Method 2
  if CompareStr('a','B')<0 then
      ShowMessage('Collected Order')
  else
      ShowMessage('ASCII Order');

  // Compare Method 3
  if AnsiCompareStr('a','B')<0 then
      ShowMessage('Collected Order') // Succeed By AnsiCompareStr
  else
      ShowMessage('ASCII Order');

end;


end.















