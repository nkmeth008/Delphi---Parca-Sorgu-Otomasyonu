unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Data.Win.ADODB, Vcl.StdCtrls,
  Vcl.Mask, Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.Buttons, Vcl.ExtCtrls;

type
  TForm1 = class(TForm)
    DataSource1: TDataSource;
    ADOConnection1: TADOConnection;
    ADOTable1: TADOTable;
    DBGrid1: TDBGrid;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    DBImage1: TDBImage;
    DBEdit1: TDBEdit;
    ADOTable1�r�nNo: TAutoIncField;
    ADOTable1Marka: TWideStringField;
    ADOTable1Model: TWideStringField;
    ADOTable1Bellek: TWideStringField;
    ADOTable1�reticiAd�: TWideStringField;
    ADOTable1�retimY�l�: TDateTimeField;
    ADOTable1S�f�r: TBooleanField;
    ADOTable1�kinciEl: TBooleanField;
    ADOTable1Fiyat: TBCDField;
    ADOTable1Bilgi: TWideStringField;
    ADOTable1Resim: TBlobField;



    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
begin
ADOTable1.Append;
ADOTable1.Open;
end;






procedure TForm1.SpeedButton4Click(Sender: TObject);
begin
    Adotable1.Prior;
end;

procedure TForm1.SpeedButton5Click(Sender: TObject);
begin
    Adotable1.Next;
end;

end.
