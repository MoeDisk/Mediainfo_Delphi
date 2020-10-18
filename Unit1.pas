unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls,MediaInfoDll;
 type
  TID3Tag=packed record   //128字节
    TAGID: array[0..2] of Char; //3字节:必须是TAG
    Title: array[0..29] of Char; //30字节:歌曲标题
    Artist: array[0..29] of Char; //30字节:歌曲的艺术家
    Album: array[0..29] of Char; //30字节:歌曲专辑
    Year: array[0..3] of Char; //4字节:出版年
    Comment: array[0..29] of Char; //30字节: 评论
    Genre: byte;   //1 字节: 种类标识
  end;

  TForm1 = class(TForm)
    Memo1: TMemo;
    OpenDialog1: TOpenDialog;
    Edit1: TEdit;
    Button2: TButton;
    Button3: TButton;
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
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
  var
    Handle: Cardinal;
    To_Display: WideString;
    CR: WideString;
  begin
    CR:=Chr(13) + Chr(10);
  end;

  Memo1.Text := To_Display;
  To_Display := MediaInfo_Option (0, 'Info_Version', '');
  end;

  procedure TForm1.Memo1Change(Sender: TObject);
  begin

  end;

  function GetMp3TAG(const Mp3FileName:string):TID3Tag;
var
  mp3file: TFileStream;
begin
  mp3file:=TFileStream.create(Mp3FileName,$0000);
  try
    mp3file.Position:=mp3file.size-128;   //跳到id3-tag
    mp3file.Read(Result,SizeOf(Result));
  finally
    mp3file.free;
  end;
end;



procedure TForm1.Button2Click(Sender: TObject);
begin
  if OpenDialog1.Execute then
  begin
    Edit1.Text:= OpenDialog1.FileName;
  end;
end;

procedure TForm1.Button3Click(Sender: TObject);
var
 Handle  : Cardinal;
begin
    Handle := MediaInfo_New();
    MediaInfo_Open(Handle,PChar(Edit1.Text));
    MediaInfo_Option (0, 'Complete', '');
    Memo1.Lines.Add('====================================================');
    Memo1.Lines.Add('====================================================');
    Memo1.Lines.Add( MediaInfo_Inform(Handle, 0));
    Memo1.Lines.Add('====================================================');
    Memo1.Lines.Add('====================================================');
    Memo1.Lines.Add( MediaInfo_Get(Handle, 0, 0, 'FileSize/String4', 1, 0));         
    Memo1.Lines.Add( MediaInfo_Get(Handle, 0, 0, 'OveralBitRate/String', 1, 0));
    Memo1.Lines.Add( MediaInfo_Get(Handle, 0, 0, 'PlayTime/String1', 1, 0));
    Memo1.Lines.Add( MediaInfo_Get(Handle, 0, 0, 'AudioCount', 1, 0));
    Memo1.Lines.Add( MediaInfo_Get(Handle, 1, 0, 'Codec/String', 1, 0));
    Memo1.Lines.Add( MediaInfo_Get(Handle, 1, 0, 'Width', 1, 0));
    Memo1.Lines.Add( MediaInfo_Get(Handle, 1, 0, 'Height', 1, 0));
    Memo1.Lines.Add( MediaInfo_Get(Handle, 1, 0, 'Bitrate', 1, 0));
    Memo1.Lines.Add( MediaInfo_Get(Handle, 1, 0, 'BitRate/String', 1, 0));
    Memo1.Lines.Add( MediaInfo_Get(Handle, 1, 0, 'AspectRatio', 1, 0));
    Memo1.Lines.Add( MediaInfo_Get(Handle, 1, 0, 'FrameRate', 1, 0));
    Memo1.Lines.Add( MediaInfo_Get(Handle, 2, 0, 'Codec/String', 1, 0));
    Memo1.Lines.Add( MediaInfo_Get(Handle, 2, 0, 'Bitrate', 1, 0));
    Memo1.Lines.Add( MediaInfo_Get(Handle, 2, 0, 'BitRate/String', 1, 0));
    Memo1.Lines.Add( MediaInfo_Get(Handle, 2, 0, 'SamplingRate/String', 1, 0));
    Memo1.Lines.Add( MediaInfo_Get(Handle, 2, 1, 'Codec/String', 1, 0));
    Memo1.Lines.Add( MediaInfo_Get(Handle, 2, 1, 'Bitrate', 1, 0));
    Memo1.Lines.Add( MediaInfo_Get(Handle, 2, 1, 'BitRate/String', 1, 0));
    Memo1.Lines.Add( MediaInfo_Get(Handle, 2, 1, 'SamplingRate/String', 1, 0));
    Memo1.Lines.Add('====================================================');
    Memo1.Lines.Add('====================================================');

    MediaInfo_Close(Handle);
end;

end.
