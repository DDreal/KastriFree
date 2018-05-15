unit DW.OSLog.Win;

{*******************************************************}
{                                                       }
{                    Kastri Free                        }
{                                                       }
{          DelphiWorlds Cross-Platform Library          }
{                                                       }
{*******************************************************}

{$I DW.GlobalDefines.inc}

interface

uses
  // DW
  DW.OSLog;

type
  /// <remarks>
  ///   DO NOT ADD ANY FMX UNITS TO THESE FUNCTIONS
  /// </remarks>
  TPlatformOSLog = record
  public
    class procedure Log(const ALogType: TLogType; const AMsg: string); static;
  end;

implementation

uses
  // RTL
  System.SysUtils,
  // Windows
  Winapi.Windows;

{ TPlatformOSLog }

class procedure TPlatformOSLog.Log(const ALogType: TLogType; const AMsg: string);
begin
  OutputDebugString(PChar(cLogTypeCaptions[ALogType] + ': ' + AMsg));
end;

end.
