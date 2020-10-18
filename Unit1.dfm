object Form1: TForm1
  Left = 191
  Top = 130
  Caption = 'Form1'
  ClientHeight = 397
  ClientWidth = 646
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Memo1: TMemo
    Left = 0
    Top = 44
    Width = 646
    Height = 353
    Align = alBottom
    ScrollBars = ssBoth
    TabOrder = 0
  end
  object Edit1: TEdit
    Left = 16
    Top = 8
    Width = 193
    Height = 21
    TabOrder = 1
  end
  object Button2: TButton
    Left = 224
    Top = 8
    Width = 75
    Height = 25
    Caption = #25171#24320#25991#20214
    TabOrder = 2
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 312
    Top = 8
    Width = 169
    Height = 25
    Caption = #33719#21462#38899#35270#39057#25991#20214#20449#24687
    TabOrder = 3
    OnClick = Button3Click
  end
  object OpenDialog1: TOpenDialog
    Filter = 
      #38899#39057#25991#20214'(*.ACC;*.AC3;*.APE;*.DTS;*.FLAC;*.M4A;*.MKA;*.MP2;*.MP3;*.MP' +
      'A;*.PMC;*.OFR;*.OGG;*.RA;*.TTA;*.WAV;*.WMA;)|*.ACC;*.AC3;*.APE;*' +
      '.DTS;*.FLAC;*.M4A;*.MKA;*.MP2;*.MP3;*.MPA;*.PMC;*.OFR;*.OGG;*.RA' +
      ';*.TTA;*.WAV;*.WMA;|'#35270#39057#25991#20214'(*.WMV;*.ASF;*.ASX;*.RM;*.RMVB;*.MPG;*.M' +
      'PEG;*.MPE;*.3GP;*.MOV;*.MP4;*.M4V;*.AVI;*.DAT;*.MKV;*.FLV;*.VOB;' +
      ')|*.WMV;*.ASF;*.ASX;*.RM;*.RMVB;*.MPG;*.MPEG;*.MPE;*.3GP;*.MOV;*' +
      '.MP4;*.M4V;*.AVI;*.DAT;*.MKV;*.FLV;*.VOB;'
    Left = 184
    Top = 64
  end
end
