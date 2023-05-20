unit Unit4;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Data.DB, Vcl.Mask,
  Vcl.DBCtrls, Data.Win.ADODB, System.ImageList, Vcl.ImgList;

type
  TForm4 = class(TForm)
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    DBImage1: TDBImage;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    Label5: TLabel;
    Label6: TLabel;
    Button1: TButton;
    ADOTable1: TADOTable;
    ADOConnection1: TADOConnection;
    DataSource1: TDataSource;
    ADOTable1Ad: TWideStringField;
    ADOTable1Soyad: TWideStringField;
    ADOTable1Kullan�c�Ad�: TWideStringField;
    ADOTable1�ifre: TWideStringField;
    ADOTable1Do�umTarihi: TDateTimeField;
    ADOTable1ProfilResmi: TBlobField;
    Button2: TButton;
    ImageList1: TImageList;
    Button3: TButton;





    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation

{$R *.dfm}
procedure TForm4.Button1Click(Sender: TObject);
begin
Adotable1.Append;
ShowMessage('Kay�t ��lemi Ba�ar�l�!');
ShowMessage('�ye Giri�ine Y�nlendiriliyorsunuz');
close;
end;








procedure TForm4.Button2Click(Sender: TObject);
begin
ShowMessage('Profil G�ncellemek ��in Admin Onay� Gerekmektedir!');
end;

procedure TForm4.Button3Click(Sender: TObject);
begin
ShowMessage('Kay�t Olmak ��in "Ekle" Butonuna T�klay�p Kay�t Olabilirsiniz..');
end;

procedure TForm4.FormCreate(Sender: TObject);
begin
ADOTable1.Append;
end;

end.
