unit Unit5;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Grids,
  Vcl.DBGrids, Data.Win.ADODB, Vcl.Mask, Vcl.DBCtrls, System.ImageList,
  Vcl.ImgList;

type
  TForm5 = class(TForm)
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
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    DBImage1: TDBImage;
    ADOTable1KayýtNo: TAutoIncField;
    ADOTable1Ad: TWideStringField;
    ADOTable1Soyad: TWideStringField;
    ADOTable1KullanýcýAdý: TWideStringField;
    ADOTable1Þifre: TWideStringField;
    ADOTable1DoðumTarihi: TDateTimeField;
    ADOTable1ProfilResmi: TBlobField;
    Button6: TButton;
    ImageList1: TImageList;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;

implementation

{$R *.dfm}

procedure TForm5.Button1Click(Sender: TObject);
begin
Adotable1.Prior;
end;

procedure TForm5.Button2Click(Sender: TObject);
begin
     Adotable1.Next;
end;

procedure TForm5.Button3Click(Sender: TObject);
begin
       Adotable1.edit;
    Adotable1.Post;
    ShowMessage('Güncelleme Ýþlemi Baþarýlý!');
end;

procedure TForm5.Button4Click(Sender: TObject);
begin
Adotable1.Delete;
ShowMessage('Silme Ýþlemi Baþarýlý!');
end;

procedure TForm5.Button5Click(Sender: TObject);
begin
adotable1.edit;
    adotable1.post;
    adotable1.insert;

end;

procedure TForm5.Button6Click(Sender: TObject);
begin
ShowMessage('Kullanýcý Verisi Eklemek Ýçin "Ekle" Butonuna Týklayýp Verileri Girdikten Sonra "Güncelle" Butonuna Týklayýnýz.');
end;

procedure TForm5.FormCreate(Sender: TObject);
begin
ADOTable1.Append;
end;

end.
