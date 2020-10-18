unit MediaInfoDll;

interface

uses
  Windows;

function MediaInfo_New: THandle; stdcall;

procedure MediaInfo_Delete(Handle: THandle); stdcall; 

function MediaInfo_Open   (Handle: THandle;
                            File__: PChar): THandle; stdcall;

procedure MediaInfo_Close (Handle: THandle); stdcall; 

function MediaInfo_Inform (Handle: THandle;
                            Reserved: Integer): PChar; stdcall;

function MediaInfo_GetI   (Handle: THandle; 
                            StreamKind: Integer; 
                            StreamNumber: Integer; 
                            Parameter: Integer;
                            KindOfInfo: Integer): PChar; stdcall;

function MediaInfo_Get    (Handle: THandle;
                            StreamKind: Integer;
                            StreamNumber: Integer;
                            Parameter: PChar;
                            KindOfInfo: Integer;
                            KindOfSearch: Integer): PChar; stdcall;

function MediaInfo_Option (Handle: THandle;
                            Option: PChar;
                            Value: PChar): PChar; stdcall;

function MediaInfo_State_Get(Handle: THandle): Integer; stdcall;

function MediaInfo_Count_Get(Handle: THandle;
                              StreamKind: Integer;
                              StreamNumber: Integer): Integer; stdcall;


implementation

function  MediaInfo_New;       external 'MediaInfo.Dll' name {$IFDEF UNICODE} 'MediaInfo_New'       {$ELSE} 'MediaInfoA_New'       {$ENDIF};
procedure MediaInfo_Delete;    external 'MediaInfo.Dll' name {$IFDEF UNICODE} 'MediaInfo_Delete'    {$ELSE} 'MediaInfoA_Delete'    {$ENDIF};
function  MediaInfo_Open;      external 'MediaInfo.Dll' name {$IFDEF UNICODE} 'MediaInfo_Open'      {$ELSE} 'MediaInfoA_Open'      {$ENDIF};
procedure MediaInfo_Close;     external 'MediaInfo.Dll' name {$IFDEF UNICODE} 'MediaInfo_Close'     {$ELSE} 'MediaInfoA_Close'     {$ENDIF};
function  MediaInfo_Inform;    external 'MediaInfo.Dll' name {$IFDEF UNICODE} 'MediaInfo_Inform'    {$ELSE} 'MediaInfoA_Inform'    {$ENDIF};
function  MediaInfo_GetI;      external 'MediaInfo.Dll' name {$IFDEF UNICODE} 'MediaInfo_GetI'      {$ELSE} 'MediaInfoA_GetI'      {$ENDIF};
function  MediaInfo_Get;       external 'MediaInfo.Dll' name {$IFDEF UNICODE} 'MediaInfo_Get'       {$ELSE} 'MediaInfoA_Get'       {$ENDIF};
function  MediaInfo_Option;    external 'MediaInfo.Dll' name {$IFDEF UNICODE} 'MediaInfo_Option'    {$ELSE} 'MediaInfoA_Option'    {$ENDIF};
function  MediaInfo_State_Get; external 'MediaInfo.Dll' name {$IFDEF UNICODE} 'MediaInfo_State_Get' {$ELSE} 'MediaInfoA_State_Get' {$ENDIF};
function  MediaInfo_Count_Get; external 'MediaInfo.Dll' name {$IFDEF UNICODE} 'MediaInfo_Count_Get' {$ELSE} 'MediaInfoA_Count_Get' {$ENDIF};

end.
