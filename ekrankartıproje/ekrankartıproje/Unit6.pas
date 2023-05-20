unit Unit6;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Grids,
  Vcl.DBGrids, Data.Win.ADODB, Vcl.Mask, Vcl.DBCtrls, System.ImageList,
  Vcl.ImgList;

type
  TForm6 = class(TForm)
    ADOConnection1: TADOConnection;
    ADOTable1: TADOTable;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    DBImage1: TDBImage;
    Label9: TLabel;
    DBCheckBox1: TDBCheckBox;
    DBCheckBox2: TDBCheckBox;
    Label10: TLabel;
    Label11: TLabel;
    DBEdit8: TDBEdit;
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
    ImageList1: TImageList;
    Button6: TButton;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form6: TForm6;

implementation

{$R *.dfm}

procedure TForm6.Button1Click(Sender: TObject);
begin
Adotable1.Prior;
end;

procedure TForm6.Button2Click(Sender: TObject);
begin
Adotable1.Next;
end;

procedure TForm6.Button3Click(Sender: TObject);
begin
 Adotable1.edit;
    Adotable1.Post;
end;

procedure TForm6.Button4Click(Sender: TObject);
begin
adotable1.edit;
    adotable1.post;
    adotable1.insert;
end;

procedure TForm6.Button5Click(Sender: TObject);
begin
Adotable1.Delete;
ShowMessage('Silme ��lemi Ba�ar�l�!');
end;

procedure TForm6.Button6Click(Sender: TObject);
begin
ShowMessage('Kullan�c� Verisi Eklemek ��in "Ekle" Butonuna T�klay�p Verileri Girdikten Sonra "G�ncelle" Butonuna T�klay�n�z.');
end;

procedure TForm6.FormCreate(Sender: TObject);
begin
ADOTable1.Append;
end;

end.
