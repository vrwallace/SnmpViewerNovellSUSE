unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls,
  ComCtrls, Grids, snmpsend, shlobj, INIFiles, winsock, pingsend, blcksock,
  lclintf, ExtCtrls, Process ;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button10: TButton;
    Button11: TButton;
    Button12: TButton;
    Button13: TButton;
    Button14: TButton;
    Button15: TButton;
    Button16: TButton;
    Button17: TButton;
    Button18: TButton;
    Button19: TButton;
    Button2: TButton;
    Button20: TButton;
    Button21: TButton;
    Button22: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    Button9: TButton;
    Scanmessage: TEdit;
    Label35: TLabel;
    rdpath: TEdit;
    Label34: TLabel;
    newhost: TEdit;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    ListBoxHostList: TListBox;
    sgresultsdiskscan: TStringGrid;
    TabSheet13: TTabSheet;
    TabSheet14: TTabSheet;
    winscppath: TEdit;
    OpenDialog1: TOpenDialog;
    Puttypath: TEdit;
    vncpath: TEdit;
    ipaddr: TComboBox;
    Label28: TLabel;
    Label29: TLabel;
    lmessage: TEdit;
    Memopingtrace: TMemo;
    PageControl2: TPageControl;
    sgresultsattable: TStringGrid;
    sgresultsiftable: TStringGrid;
    sgresultstcpconnections: TStringGrid;
    sgresultsIPaddress: TStringGrid;
    sgresultsroutetable: TStringGrid;
    TabSheet10: TTabSheet;
    TabSheet11: TTabSheet;
    TabSheet12: TTabSheet;
    TabSheet5: TTabSheet;
    TabSheet6: TTabSheet;
    TabSheet7: TTabSheet;
    TabSheet8: TTabSheet;
    TabSheet9: TTabSheet;
    tss: TEdit;
    ass: TEdit;
    Tram: TEdit;
    tru: TEdit;
    trf: TEdit;
    trs: TEdit;
    trb: TEdit;
    tcm: TEdit;
    Label8: TLabel;
    ml1: TEdit;
    nct: TEdit;
    ml5: TEdit;
    ml15: TEdit;
    uct: TEdit;
    uctp: TEdit;
    sctp: TEdit;
    sct: TEdit;
    ictp: TEdit;
    ict: TEdit;
    ss: TEdit;
    Label1: TLabel;
    sl: TEdit;
    sn: TEdit;
    sc: TEdit;
    sut: TEdit;
    oi: TEdit;
    sd: TEdit;
    GroupBox1: TGroupBox;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label2: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label9: TLabel;
    PageControl1: TPageControl;
    sgResultsdisk: TStringGrid;
    SNMPString: TEdit;
    sgresultsprocesses: TStringGrid;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    Processes: TTabSheet;
    procedure Button10Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure Button12Click(Sender: TObject);
    procedure Button13Click(Sender: TObject);
    procedure Button14Click(Sender: TObject);
    procedure Button15Click(Sender: TObject);
    procedure Button16Click(Sender: TObject);
    procedure Button17Click(Sender: TObject);
    procedure Button18Click(Sender: TObject);
    procedure Button19Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button20Click(Sender: TObject);
    procedure Button21Click(Sender: TObject);
    procedure Button22Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure DumpExceptionCallStack(E: Exception; how: string);
    function hsToHourMinSec(HSsecondsstr: string): string;
    function getsetpath(): string;

    procedure savesettings(Sender: TObject);
    procedure loadsettings(Sender: TObject);
    function GetIPAddress(hostname: string): string;
    function passedToHourMinSec(mspassed: integer): string;
    function PingHostfun(const Host: string): string;
    function TraceRouteHostfun(const Host: string): string;
    function Pingtracertrttl(const Host: string): string;
    procedure runprogramex(procommandline: string);

  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Button1Click(Sender: TObject);
var
  table: TStringList;
  Rule: TStringList;
  NumRows: integer;
  SNMPResult: boolean;
  Result: string;
  snmpval, ipaddrval, hostnameval: string;
  starttime: integer;

begin

  try

    starttime := getTickCount64;

    Result := '';

    //system tab

    sd.Text := Result;

    oi.Text := Result;

    sut.Text := Result;

    sc.Text := Result;

    sn.Text := Result;

    sl.Text := Result;

    ss.Text := Result;

    //CPU tab

    ml1.Text := Result;

    ml5.Text := Result;

    ml15.Text := Result;

    uctp.Text := Result;

    uct.Text := Result;

    sctp.Text := Result;

    sct.Text := Result;

    ictp.Text := Result;

    ict.Text := Result;

    nct.Text := Result;

    //memory tab

    tss.Text := Result;

    ass.Text := Result;

    Tram.Text := Result;

    tru.Text := Result;

    trf.Text := Result;

    trs.Text := Result;

    trb.Text := Result;

    tcm.Text := Result;

    lmessage.Text := '';

    sgResultsdisk.clean;
    sgresultsdisk.RowCount := 2;
    sgResultsprocesses.Clean;
    sgResultsprocesses.rowcount := 2;
    sgResultstcpconnections.Clean;
    sgResultstcpconnections.rowcount := 2;
    sgResultsiftable.clean;
    sgresultsiftable.rowcount := 2;
    sgresultsipaddress.clean;
    sgresultsipaddress.rowcount := 2;
    sgresultsroutetable.clean;
    sgresultsroutetable.rowcount := 2;
    sgresultsattable.clean;
    sgresultsattable.rowcount := 2;
    snmpval := SNMPString.Text;

    hostnameval := ipaddr.Text;

    ipaddrval := GetIPAddress(ipaddr.Text);
    if ipaddrval = '' then
    begin
      lmessage.Text := 'Could not resolve IP Address!';
      application.ProcessMessages;
      ShowMessage('Could not resolve IP Address!');
      exit;
    end;

    lMessage.Text := 'Testing Connection...';
    application.ProcessMessages;

    SNMPResult := SNMPGet('1.3.6.1.2.1.1.1.0', SNMPval, ipaddrval, Result);
    if (SNMPResult <> True) then
    begin
      lmessage.Text := 'Failed test SNMPGet, check Community Name or Host!';
      application.ProcessMessages;
      ShowMessage('Failed test SNMPGet, check Community Name or Host!');
      exit;
    end;


    lMessage.Text := 'Getting Disks Info...';
    application.ProcessMessages;

    //disktable

    try
      //lMessage.text := '--';
      Table := TStringList.Create;
      Table.Clear;
      Rule := TStringList.Create;



      SNMPResult := SNMPGetTable('1.3.6.1.4.1.2021.9.1', SNMPval,
        ipaddrval, Table);
      if (SNMPResult = True) then
      begin
        sgResultsdisk.RowCount := Table.Count + 1;  // sgResultsdisk is a StringGrid

        if Table.Count > 0 then
        begin

          rule.Delimiter := ',';
          rule.QuoteChar := '"';
          rule.Clear;
          rule.DelimitedText :=
            '"dskIndex","dskPath","dskDevice","dskMinimum","dskMinPercent","dskTotal","dskAvail","dskUsed","dskPercent","dskPercentNode","dskTotalLow","dskTotalHigh","dskAvailLow","dskAvailHigh","dskUsedLow","dskUsedHigh","dskErrorFlag","dskErrorMsg"';
          sgResultsdisk.Rows[0].Assign(rule);


          for NumRows := 0 to Table.Count - 1 do
          begin

            application.ProcessMessages;

            rule.Delimiter := ',';
            rule.QuoteChar := '"';
            rule.Clear;
            rule.DelimitedText := Table[NumRows];
            sgResultsdisk.Rows[NumRows + 1].Assign(rule);

          end;  // of parse the results ...
        end    // of deal with each of the result lines ...
        else;

        {sgResultsdisk.columns[5].Color := clyellow;
        sgResultsdisk.columns[6].Color := clyellow;
        sgResultsdisk.columns[7].Color := clyellow;
        sgResultsdisk.columns[8].Color := clyellow;}

        //lMessage.text := 'Valid device & string: No rows returned';
      end
      else;
      // lMessage.text := 'Some sort of SNMP error';
    finally
      begin
        Rule.Free;
        Table.Free;
      end
    end;

    lMessage.Text := 'Getting Processes Pass 1...';
    application.ProcessMessages;

    //process table part1
    try
      //lMessage.text := '--';
      Table := TStringList.Create;
      Table.Clear;
      Rule := TStringList.Create;



      SNMPResult := SNMPGetTable('1.3.6.1.2.1.25.4.2.1', SNMPval,
        ipaddrval, Table);
      if (SNMPResult = True) then
      begin
        sgResultsprocesses.RowCount := Table.Count + 1;  // sgResultsdisk is a StringGrid

        if Table.Count > 0 then
        begin

          rule.Delimiter := ',';
          rule.QuoteChar := '"';
          rule.Clear;
          rule.DelimitedText :=
            '"hrSWRunIndex","hrSWRunName","hrSWRunID","hrSWRunPath","hrSWRunParameters","hrSWRunType","hrSWRunStatus","hrSWRunPerfCPU","hrSWRunPerfMem"';
          sgResultsprocesses.Rows[0].Assign(rule);


          for NumRows := 0 to Table.Count - 1 do
          begin
            application.ProcessMessages;

            rule.Delimiter := ',';
            rule.QuoteChar := '"';
            rule.Clear;
            rule.DelimitedText := Table[NumRows];
            sgResultsprocesses.Rows[NumRows + 1].Assign(rule);

          end;  // of parse the results ...
        end    // of deal with each of the result lines ...
        else;
        //  lMessage.text := 'Valid device & string: No rows returned';
      end
      else;
      // lMessage.text := 'Some sort of SNMP error';
    finally
      begin
        Rule.Free;
        Table.Free;
      end
    end;

    lMessage.Text := 'Getting Processes Pass 2...';
    application.ProcessMessages;


    //process table part 2

    try
      //lMessage.text := '--';
      Table := TStringList.Create;
      Table.Clear;
      Rule := TStringList.Create;



      SNMPResult := SNMPGetTable('1.3.6.1.2.1.25.5.1.1', SNMPval,
        ipaddrval, Table);
      if (SNMPResult = True) then
      begin
        sgResultsprocesses.RowCount := Table.Count + 1;  // sgResultsdisk is a StringGrid

        if Table.Count > 0 then
        begin

          for NumRows := 0 to Table.Count - 1 do
          begin
            application.ProcessMessages;

            rule.Delimiter := ',';
            rule.QuoteChar := '"';
            rule.Clear;
            rule.DelimitedText :=
              '"' + sgResultsprocesses.Rows[NumRows + 1].Strings[0] +
              '","' + sgResultsprocesses.Rows[NumRows + 1].Strings[1] +
              '","' + sgResultsprocesses.Rows[NumRows + 1].Strings[2] +
              '","' + sgResultsprocesses.Rows[NumRows + 1].Strings[3] +
              '","' + sgResultsprocesses.Rows[NumRows + 1].Strings[4] +
              '","' + sgResultsprocesses.Rows[NumRows + 1].Strings[5] +
              '","' + sgResultsprocesses.Rows[NumRows + 1].Strings[6] +
              '",' + Table[NumRows];
            //showmessage(sgResultsprocesses.Rows[NumRows+1].Strings[1]);
            sgResultsprocesses.Rows[NumRows + 1].Assign(rule);

            sgResultsprocesses.Rows[NumRows + 1].Strings[7] :=
              hsToHourMinSec(sgResultsprocesses.Rows[NumRows + 1].Strings[7]);
            //sgResultsprocesses.Rows[NumRows+1].Strings[7]:=table[numrows][1];

          end;  // of parse the results ...
        end    // of deal with each of the result lines ...
        else;
        //  lMessage.text := 'Valid device & string: No rows returned';
      end
      else;
      // lMessage.text := 'Some sort of SNMP error';
    finally
      begin
        Rule.Free;
        Table.Free;
      end
    end;

    lMessage.Text := 'Getting TCP Connections...';
    application.ProcessMessages;


    //tcp connections
    try
      //lMessage.text := '--';
      Table := TStringList.Create;
      Table.Clear;
      Rule := TStringList.Create;



      SNMPResult := SNMPGetTable('1.3.6.1.2.1.6.13.1', SNMPval, ipaddrval, Table);
      if (SNMPResult = True) then
      begin
        sgResultstcpconnections.RowCount := Table.Count + 1;
        // sgResultsdisk is a StringGrid

        if Table.Count > 0 then
        begin

          rule.Delimiter := ',';
          rule.QuoteChar := '"';
          rule.Clear;
          rule.DelimitedText :=
            '"tcpConnState","tcpConnLocalAddress","tcpConnLocalPort","tcpCommRemAddress","tcpConnRemPort"';
          sgResultstcpconnections.Rows[0].Assign(rule);


          for NumRows := 0 to Table.Count - 1 do
          begin
            application.ProcessMessages;

            rule.Delimiter := ',';
            rule.QuoteChar := '"';
            rule.Clear;
            rule.DelimitedText := Table[NumRows];
            sgResultstcpconnections.Rows[NumRows + 1].Assign(rule);

          end;  // of parse the results ...
        end    // of deal with each of the result lines ...
        else;
        //  lMessage.text := 'Valid device & string: No rows returned';
      end
      else;
      // lMessage.text := 'Some sort of SNMP error';
    finally
      begin
        Rule.Free;
        Table.Free;
      end
    end;


    lMessage.Text := 'Getting If Table...';
    application.ProcessMessages;

    //iftable
    try
      //lMessage.text := '--';
      Table := TStringList.Create;
      Table.Clear;
      Rule := TStringList.Create;



      SNMPResult := SNMPGetTable('1.3.6.1.2.1.2.2.1', SNMPval, ipaddrval, Table);
      if (SNMPResult = True) then
      begin
        sgResultsiftable.RowCount := Table.Count + 1;  // sgResultsdisk is a StringGrid

        if Table.Count > 0 then
        begin

          rule.Delimiter := ',';
          rule.QuoteChar := '"';
          rule.Clear;




          rule.DelimitedText :=
            '"ifIndex","ifDescr","ifType","ifMtu","ifSpeed","ifPhysAddress","ifAdminStatus","ifOperStatus","ifLastChange","ifInOctets","ifInUcastPkts","ifInNUcastPkts","ifInDiscards","ifInErrors","ifInUnknownProtos","ifOutOctets","ifOutUcastPkts","ifOutNUcastPkts","ifOutDiscards","ifOutErrors","ifOutQLen","ifSpecific"';
          sgResultsiftable.Rows[0].Assign(rule);


          for NumRows := 0 to Table.Count - 1 do
          begin
            application.ProcessMessages;

            rule.Delimiter := ',';
            rule.QuoteChar := '"';
            rule.Clear;
            rule.DelimitedText := Table[NumRows];
            sgResultsiftable.Rows[NumRows + 1].Assign(rule);

          end;  // of parse the results ...
        end    // of deal with each of the result lines ...
        else;
        //  lMessage.text := 'Valid device & string: No rows returned';
      end
      else;
      // lMessage.text := 'Some sort of SNMP error';
    finally
      begin
        Rule.Free;
        Table.Free;
      end
    end;

    lMessage.Text := 'Getting IP Address Table...';
    application.ProcessMessages;


    //IP Address table

    try
      //lMessage.text := '--';
      Table := TStringList.Create;
      Table.Clear;
      Rule := TStringList.Create;



      SNMPResult := SNMPGetTable('1.3.6.1.2.1.4.20.1', SNMPval, ipaddrval, Table);
      if (SNMPResult = True) then
      begin
        sgResultsipaddress.RowCount := Table.Count + 1;  // sgResultsdisk is a StringGrid

        if Table.Count > 0 then
        begin

          rule.Delimiter := ',';
          rule.QuoteChar := '"';
          rule.Clear;


          //'"Instance","ipAdEntAddr","ipAdEntIfIndex","ipAdEntNetMask","ipAdEntBcastAddr","ipAdEntReasmMaxSize"'


          rule.DelimitedText :=
            '"ipAdEntAddr","ipAdEntIfIndex","ipAdEntNetMask","ipAdEntBcastAddr","ipAdEntReasmMaxSize"';
          sgResultsipaddress.Rows[0].Assign(rule);


          for NumRows := 0 to Table.Count - 1 do
          begin
            application.ProcessMessages;

            rule.Delimiter := ',';
            rule.QuoteChar := '"';
            rule.Clear;
            rule.DelimitedText := Table[NumRows];
            sgResultsipaddress.Rows[NumRows + 1].Assign(rule);

          end;  // of parse the results ...
        end    // of deal with each of the result lines ...
        else;
        //lMessage.text := 'Valid device & string: No rows returned';
      end
      else;
      //lMessage.text := 'Some sort of SNMP error';
    finally
      begin
        Rule.Free;
        Table.Free;
      end
    end;

    lMessage.Text := 'Getting Route Table...';
    application.ProcessMessages;


    //Route table

    try
      //lMessage.text := '--';
      Table := TStringList.Create;
      Table.Clear;
      Rule := TStringList.Create;



      SNMPResult := SNMPGetTable('1.3.6.1.2.1.4.21.1', SNMPval, ipaddrval, Table);
      if (SNMPResult = True) then
      begin
        sgResultsroutetable.RowCount := Table.Count + 1;
        // sgResultsdisk is a StringGrid

        if Table.Count > 0 then
        begin

          rule.Delimiter := ',';
          rule.QuoteChar := '"';
          rule.Clear;



          //         // '"Instance","ipRouteDest","ipRouteIfIndex","ipRouteMetric1","ipRouteMetric2","ipRouteMetric3","ipRouteMetric4","ipRouteNextHop","ipRouteType","ipRouteProto","ipRouteAge","ipRouteMask","ipRouteMetric5","ipRouteInfo"'



          rule.DelimitedText :=
            '"ipRouteDest","ipRouteIfIndex","ipRouteMetric1","ipRouteMetric2","ipRouteMetric3","ipRouteMetric4","ipRouteNextHop","ipRouteType","ipRouteProto","ipRouteAge","ipRouteMask","ipRouteMetric5","ipRouteInfo"';
          sgResultsroutetable.Rows[0].Assign(rule);


          for NumRows := 0 to Table.Count - 1 do
          begin
            application.ProcessMessages;

            rule.Delimiter := ',';
            rule.QuoteChar := '"';
            rule.Clear;
            rule.DelimitedText := Table[NumRows];
            sgResultsroutetable.Rows[NumRows + 1].Assign(rule);

          end;  // of parse the results ...
        end    // of deal with each of the result lines ...
        else;
        //  lMessage.text := 'Valid device & string: No rows returned';
      end
      else;
      // lMessage.text := 'Some sort of SNMP error';
    finally
      begin
        Rule.Free;
        Table.Free;
      end
    end;


    lMessage.Text := 'Getting AT Table...';
    application.ProcessMessages;

    //attable

    try
      // lMessage.text := '--';
      Table := TStringList.Create;
      Table.Clear;
      Rule := TStringList.Create;



      SNMPResult := SNMPGetTable('1.3.6.1.2.1.3.1.1', SNMPval, ipaddrval, Table);
      if (SNMPResult = True) then
      begin
        sgResultsattable.RowCount := Table.Count + 1;  // sgResultsdisk is a StringGrid

        if Table.Count > 0 then
        begin

          rule.Delimiter := ',';
          rule.QuoteChar := '"';
          rule.Clear;


          //'"atIfIndex","atPhysAddress","atNetAddress"'

          rule.DelimitedText := '"atIfIndex","atPhysAddress","atNetAddress"';
          sgResultsattable.Rows[0].Assign(rule);


          for NumRows := 0 to Table.Count - 1 do
          begin
            application.ProcessMessages;

            rule.Delimiter := ',';
            rule.QuoteChar := '"';
            rule.Clear;
            rule.DelimitedText := Table[NumRows];
            sgResultsattable.Rows[NumRows + 1].Assign(rule);

          end;  // of parse the results ...
        end    // of deal with each of the result lines ...
        else;
        //   lMessage.text := 'Valid device & string: No rows returned';
      end
      else;
      // lMessage.text := 'Some sort of SNMP error';
    finally
      begin
        Rule.Free;
        Table.Free;
      end
    end;



    lMessage.Text := 'Getting System Info...';
    application.ProcessMessages;

    //system tab

    SNMPResult := SNMPGet('1.3.6.1.2.1.1.1.0', SNMPval, ipaddrval, Result);
    if (SNMPResult = True) then
      sd.Text := Result;

    SNMPResult := SNMPGet('1.3.6.1.2.1.1.2.0', SNMPval, ipaddrval, Result);
    if (SNMPResult = True) then
      oi.Text := Result;

    //.1.3.6.1.2.1.25.1.1.0 of server not network interface
    //SNMPResult := SNMPGet('1.3.6.1.2.1.1.3.0', SNMPval, ipaddrval, Result);
    SNMPResult := SNMPGet('1.3.6.1.2.1.25.1.1.0', SNMPval, ipaddrval, Result);
    if (SNMPResult = True) then
      sut.Text := hsToHourMinSec(Result);

    SNMPResult := SNMPGet('1.3.6.1.2.1.1.4.0', SNMPval, ipaddrval, Result);
    if (SNMPResult = True) then
      sc.Text := Result;

    SNMPResult := SNMPGet('1.3.6.1.2.1.1.5.0', SNMPval, ipaddrval, Result);
    if (SNMPResult = True) then
      sn.Text := Result;

    SNMPResult := SNMPGet('1.3.6.1.2.1.1.6.0', SNMPval, ipaddrval, Result);
    if (SNMPResult = True) then
      sl.Text := Result;

    SNMPResult := SNMPGet('1.3.6.1.2.1.1.7.0', SNMPval, ipaddrval, Result);
    if (SNMPResult = True) then
      ss.Text := Result;

    lMessage.Text := 'Getting CPU Info...';
    application.ProcessMessages;

    //CPU tab

    SNMPResult := SNMPGet('1.3.6.1.4.1.2021.10.1.3.1', SNMPval, ipaddrval, Result);
    if (SNMPResult = True) then
      ml1.Text := Result;

    SNMPResult := SNMPGet('1.3.6.1.4.1.2021.10.1.3.2', SNMPval, ipaddrval, Result);
    if (SNMPResult = True) then
      ml5.Text := Result;

    SNMPResult := SNMPGet('1.3.6.1.4.1.2021.10.1.3.3', SNMPval, ipaddrval, Result);
    if (SNMPResult = True) then
      ml15.Text := Result;

    SNMPResult := SNMPGet('1.3.6.1.4.1.2021.11.9.0', SNMPval, ipaddrval, Result);
    if (SNMPResult = True) then
      uctp.Text := Result;

    SNMPResult := SNMPGet('1.3.6.1.4.1.2021.11.50.0', SNMPval, ipaddrval, Result);
    if (SNMPResult = True) then
      uct.Text := hsToHourMinSec(Result);

    SNMPResult := SNMPGet('1.3.6.1.4.1.2021.11.10.0', SNMPval, ipaddrval, Result);
    if (SNMPResult = True) then
      sctp.Text := Result;

    SNMPResult := SNMPGet('1.3.6.1.4.1.2021.11.52.0', SNMPval, ipaddrval, Result);
    if (SNMPResult = True) then
      sct.Text := hsToHourMinSec(Result);

    SNMPResult := SNMPGet('1.3.6.1.4.1.2021.11.11.0', SNMPval, ipaddrval, Result);
    if (SNMPResult = True) then
      ictp.Text := Result;

    SNMPResult := SNMPGet('1.3.6.1.4.1.2021.11.53.0', SNMPval, ipaddrval, Result);
    if (SNMPResult = True) then
      ict.Text := hsToHourMinSec(Result);

    SNMPResult := SNMPGet('1.3.6.1.4.1.2021.11.51.0', SNMPval, ipaddrval, Result);
    if (SNMPResult = True) then
      nct.Text := hsToHourMinSec(Result);

    lMessage.Text := 'Getting Memory Info...';
    application.ProcessMessages;

    //memory tab

    SNMPResult := SNMPGet('1.3.6.1.4.1.2021.4.3.0', SNMPval, ipaddrval, Result);
    if (SNMPResult = True) then
      tss.Text := Result;

    SNMPResult := SNMPGet('1.3.6.1.4.1.2021.4.4.0', SNMPval, ipaddrval, Result);
    if (SNMPResult = True) then
      ass.Text := Result;

    SNMPResult := SNMPGet('1.3.6.1.4.1.2021.4.5.0', SNMPval, ipaddrval, Result);
    if (SNMPResult = True) then
      Tram.Text := Result;

    SNMPResult := SNMPGet('1.3.6.1.4.1.2021.4.6.0', SNMPval, ipaddrval, Result);
    if (SNMPResult = True) then
      tru.Text := Result;

    SNMPResult := SNMPGet('1.3.6.1.4.1.2021.4.11.0', SNMPval, ipaddrval, Result);
    if (SNMPResult = True) then
      trf.Text := Result;

    SNMPResult := SNMPGet('1.3.6.1.4.1.2021.4.13.0', SNMPval, ipaddrval, Result);
    if (SNMPResult = True) then
      trs.Text := Result;

    SNMPResult := SNMPGet('1.3.6.1.4.1.2021.4.14.0', SNMPval, ipaddrval, Result);
    if (SNMPResult = True) then
      trb.Text := Result;

    SNMPResult := SNMPGet('1.3.6.1.4.1.2021.4.15.0', SNMPval, ipaddrval, Result);
    if (SNMPResult = True) then
      tcm.Text := Result;


    lMessage.Text := 'Get Complete! - ' + hostnameval + ' ' + ipaddrval +
      ' [' + passedToHourMinSec(gettickcount64 - starttime) + ']';
    application.ProcessMessages;

  except
    on E: Exception do
    begin
      lMessage.Text := 'Error Occured!';
      application.ProcessMessages;

      DumpExceptionCallStack(E, 'showmessage');
    end;

  end;

end;

procedure TForm1.Button20Click(Sender: TObject);
var

  filepath: string;
  INI: TINIFile;

begin
  OpenDialog1.Filter := 'Application|*.exe';

  if OpenDialog1.Execute then
  begin
    rdpath.Text := OpenDialog1.FileName;
  end
  else
    exit;

  if rdpath.Text = '' then
    exit;

  try
    try

      filepath := getsetpath;

      INI := TINIFile.Create(filepath + 'snmpviewer.ini');


      ini.Writestring('config', 'rdpath', rdpath.Text);

      ShowMessage('RD Path Path Saved');
    finally
      Ini.Free;
    end;
  except
    on E: Exception do
    begin
      DumpExceptionCallStack(E, 'showmessage');
    end;

  end;

end;

procedure TForm1.Button21Click(Sender: TObject);
var
  ipaddrval: string;

begin
  ipaddrval := GetIPAddress(ipaddr.Text);
  if ipaddrval = '' then
  begin
    application.ProcessMessages;
    ShowMessage('Could not resolve IP Address!');
    exit;
  end;

  if rdpath.Text = '' then
  begin
    ShowMessage('RD Path Path Not Valid');
    exit;
  end;

  if fileexists(rdpath.Text) then
  begin
    runprogramex('"' + rdpath.Text + '" /v:' + ipaddrval);
  end
  else
    ShowMessage('RDP Path Path Not Valid');

end;

procedure TForm1.Button22Click(Sender: TObject);
var

  table: TStringList;
  Rule: TStringList;
  NumRows: integer;
  SNMPResult: boolean;
  Result: string;
  snmpval, ipaddrval: string;
  j, addedrows, starttime: integer;
  currentrow: TStringList;

begin
  try
    sgResultsdiskscan.rowcount := 2;
    sgResultsdiskscan.clean;
    scanmessage.Text := '';
    starttime := getTickCount64;
    snmpval := snmpstring.Text;

    Rule := TStringList.Create;
    rule.Delimiter := ',';
    rule.QuoteChar := '"';
    rule.Clear;
    rule.DelimitedText :=
      '"Host","dskIndex","dskPath","dskDevice","dskMinimum","dskMinPercent","dskTotal","dskAvail","dskUsed","dskPercent","dskPercentNode","dskTotalLow","dskTotalHigh","dskAvailLow","dskAvailHigh","dskUsedLow","dskUsedHigh","dskErrorFlag","dskErrorMsg"';
    sgResultsdiskscan.Rows[0].Assign(rule);
    rule.Free;


    addedrows := 0;

    for j := 0 to ipaddr.Items.Count - 1 do
    begin
      ipaddrval := GetIPAddress(ipaddr.Items[j]);

      //ipaddrval:=ipaddr.Text;
      if ipaddrval = '' then
      begin
        scanmessage.Text := 'Could not resolve IP Address for ' + ipaddr.Items[j] + '!';
        application.ProcessMessages;

      end
      else
      begin

        scanmessage.Text := 'Testing Connection... for ' + ipaddr.Items[j]+' '+ ipaddrval;
        application.ProcessMessages;

        SNMPResult := SNMPGet('1.3.6.1.2.1.1.1.0', SNMPval, ipaddrval, Result);
        if (SNMPResult <> True) then
        begin
          scanmessage.Text := 'Failed test SNMPGet, for ' + ipaddr.Items[j]+' '+ ipaddrval;
          application.ProcessMessages;

        end
        else
        begin

          //disktable

          try
            scanmessage.Text := 'Scanning Disks on ' + ipaddr.Items[j] + ' ' + ipaddrval;
            application.ProcessMessages;
            Table := TStringList.Create;
            Table.Clear;
            Rule := TStringList.Create;
            currentrow := TStringList.Create;




            SNMPResult := SNMPGetTable('1.3.6.1.4.1.2021.9.1', SNMPval,
              ipaddrval, Table);
            if (SNMPResult = True) then
            begin

              // sgResultsdisk.RowCount := Table.Count + 1;  // sgResultsdisk is a StringGrid

              if Table.Count > 0 then
              begin

                for NumRows := 0 to Table.Count - 1 do
                begin

                  application.ProcessMessages;
                  currentrow.DelimitedText := table[numrows];
                  //showmessage(currentrow[16]);
                  if currentrow[16] = '1' then
                  begin
                    addedrows := addedrows + 1;
                    rule.Delimiter := ',';
                    rule.QuoteChar := '"';
                    rule.Clear;
                    rule.DelimitedText := '"' + ipaddr.Items[j] + '",' + Table[NumRows];
                    sgResultsdiskscan.RowCount := addedrows + 1;
                    sgResultsdiskscan.Rows[addedrows].Assign(rule);
                  end;
                end;  // of parse the results ...
              end    // of deal with each of the result lines ...
              else;
              //lMessage.text := 'Valid device & string: No rows returned';
            end
            else;
            // lMessage.text := 'Some sort of SNMP error';
          finally
            begin
              Rule.Free;
              Table.Free;
              currentrow.Free;
            end
          end;

        end;
      end;
    end;
    scanmessage.Text := 'Scan Complete! - [' + passedToHourMinSec(
      gettickcount64 - starttime) + ']';
    application.ProcessMessages;

  except
    on E: Exception do
    begin
      scanmessage.Text := 'Error Occured!';
      application.ProcessMessages;

      DumpExceptionCallStack(E, 'showmessage');
    end;

  end;

end;

procedure TForm1.Button10Click(Sender: TObject);
var
  ipaddrval: string;

begin
  ipaddrval := GetIPAddress(ipaddr.Text);
  if ipaddrval = '' then
  begin
    application.ProcessMessages;
    ShowMessage('Could not resolve IP Address!');
    exit;
  end;

  if winscppath.Text = '' then
  begin
    ShowMessage('WinSCP Path Not Valid');
    exit;
  end;

  if fileexists(winscppath.Text) then
  begin
    runprogramex('"' + winscppath.Text + '" scp://' + ipaddrval);
  end
  else
    ShowMessage('WinSCP Path Not Valid');

end;

procedure TForm1.Button11Click(Sender: TObject);
begin
  try
    openurl('https://192.168.10.5:9710/');
  except
    on E: Exception do
    begin
      DumpExceptionCallStack(E, 'showmessage');
    end;
  end;

end;

procedure TForm1.Button12Click(Sender: TObject);
var
  ipaddrval: string;

begin

  ipaddrval := GetIPAddress(ipaddr.Text);
  if ipaddrval = '' then
  begin
    application.ProcessMessages;
    ShowMessage('Could not resolve IP Address!');
    exit;
  end;




  try
    openurl('https://' + ipaddrval + ':9710/');
  except
    on E: Exception do
    begin
      DumpExceptionCallStack(E, 'showmessage');
    end;
  end;

end;

procedure TForm1.Button13Click(Sender: TObject);
begin
  try
    openurl('https://COMPANY.com/gw/webacc');
  except
    on E: Exception do
    begin
      DumpExceptionCallStack(E, 'showmessage');
    end;
  end;

end;

procedure TForm1.Button14Click(Sender: TObject);
var
  ipaddrval: string;

begin
  ipaddrval := GetIPAddress(ipaddr.Text);
  if ipaddrval = '' then
  begin
    application.ProcessMessages;
    ShowMessage('Could not resolve IP Address!');
    exit;
  end;

  try
    openurl('https://' + ipaddrval + '/nps/iManager.html ');
  except
    on E: Exception do
    begin
      DumpExceptionCallStack(E, 'showmessage');
    end;
  end;

end;

procedure TForm1.Button15Click(Sender: TObject);

var
  ipaddrval: string;

begin

  ipaddrval := GetIPAddress(ipaddr.Text);
  if ipaddrval = '' then
  begin
    application.ProcessMessages;
    ShowMessage('Could not resolve IP Address!');
    exit;
  end;

  try
    openurl('https://' + ipaddrval + ':8030/');
  except
    on E: Exception do
    begin
      DumpExceptionCallStack(E, 'showmessage');
    end;
  end;

end;

procedure TForm1.Button16Click(Sender: TObject);

var
  ipaddrval: string;

begin
  ipaddrval := GetIPAddress(ipaddr.Text);
  if ipaddrval = '' then
  begin
    application.ProcessMessages;
    ShowMessage('Could not resolve IP Address!');
    exit;
  end;

  try
    openurl('https://' + ipaddrval + ':8009/ ');
  except
    on E: Exception do
    begin
      DumpExceptionCallStack(E, 'showmessage');
    end;
  end;

end;

procedure TForm1.Button17Click(Sender: TObject);
begin
  if trim(newhost.Text) <> '' then
  begin
    listboxhostlist.items.Add(trim(newhost.Text));
    newhost.Text := '';
  end;
end;

procedure TForm1.Button18Click(Sender: TObject);
begin
  if listboxhostlist.ItemIndex > -1 then
    listboxhostlist.Items.Delete(listboxhostlist.ItemIndex);
end;

procedure TForm1.Button19Click(Sender: TObject);

var

  filepath: string;
  INI: TINIFile;

begin

  try
    try

      filepath := getsetpath;

      INI := TINIFile.Create(filepath + 'snmpviewer.ini');


      ini.Writestring('config', 'hostlist', listboxhostlist.Items.DelimitedText);
      ShowMessage('Host List Saved');
      ipaddr.items.DelimitedText := listboxhostlist.items.DelimitedText;

    finally
      Ini.Free;
    end;
  except
    on E: Exception do
    begin
      DumpExceptionCallStack(E, 'showmessage');
    end;

  end;

end;


procedure TForm1.Button2Click(Sender: TObject);
begin
  savesettings(nil);
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  memopingtrace.Clear;
  memopingtrace.Lines.add('Pinging...');
  application.ProcessMessages;
  memopingtrace.Lines.add(pinghostfun(ipaddr.Text));
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
  memopingtrace.Clear;
  memopingtrace.Lines.add('Tracerouting...');
  application.ProcessMessages;
  memopingtrace.Lines.add(traceroutehostfun(ipaddr.Text));
end;

procedure TForm1.Button5Click(Sender: TObject);
var

  filepath: string;
  INI: TINIFile;

begin
  OpenDialog1.Filter := 'Application|*.exe';

  if OpenDialog1.Execute then
  begin
    puttypath.Text := OpenDialog1.FileName;
  end
  else
    exit;

  if puttypath.Text = '' then
    exit;

  try
    try

      filepath := getsetpath;

      INI := TINIFile.Create(filepath + 'snmpviewer.ini');


      ini.Writestring('config', 'puttypath', puttypath.Text);

      ShowMessage('Putty Path Saved');
    finally
      Ini.Free;
    end;
  except
    on E: Exception do
    begin
      DumpExceptionCallStack(E, 'showmessage');
    end;

  end;

end;

procedure TForm1.Button6Click(Sender: TObject);
var

  filepath: string;
  INI: TINIFile;

begin
  OpenDialog1.Filter := 'Application|*.exe';

  if OpenDialog1.Execute then
  begin
    vncpath.Text := OpenDialog1.FileName;
  end
  else
    exit;

  if vncpath.Text = '' then
    exit;

  try
    try

      filepath := getsetpath;

      INI := TINIFile.Create(filepath + 'snmpviewer.ini');


      ini.Writestring('config', 'vncpath', vncpath.Text);

      ShowMessage('VNC Path Saved');
    finally
      Ini.Free;
    end;
  except
    on E: Exception do
    begin
      DumpExceptionCallStack(E, 'showmessage');
    end;

  end;
end;

procedure TForm1.Button7Click(Sender: TObject);
var
  ipaddrval: string;

begin
  ipaddrval := GetIPAddress(ipaddr.Text);
  if ipaddrval = '' then
  begin
    application.ProcessMessages;
    ShowMessage('Could not resolve IP Address!');
    exit;
  end;

  if puttypath.Text = '' then
  begin
    ShowMessage('Putty Path Not Valid');
    exit;
  end;

  if fileexists(puttypath.Text) then
  begin
    runprogramex('"' + puttypath.Text + '" -ssh ' + ipaddrval);
  end
  else
    ShowMessage('Putty Path Not Valid');

end;

procedure TForm1.Button8Click(Sender: TObject);

var
  ipaddrval: string;

  connectionstring: string;
begin
  ipaddrval := GetIPAddress(ipaddr.Text);
  if ipaddrval = '' then
  begin
    application.ProcessMessages;
    ShowMessage('Could not resolve IP Address!');
    exit;
  end;



  case QuestionDlg('Connect Options', 'Select Port', mtCustom,
      [mrYes, 'Default', 'IsDefault', mrNo, '5901'], '') of
    mrYes: connectionstring := '"' + vncpath.Text + '" ' + ipaddrval;
    mrNo: connectionstring := '"' + vncpath.Text + '" ' + ipaddrval + ':5901';
    mrCancel: exit;
  end;




  if vncpath.Text = '' then
  begin
    ShowMessage('VNC Path Not Valid');
    exit;
  end;


  if fileexists(vncpath.Text) then
  begin
    runprogramex(connectionstring);
  end
  else
    ShowMessage('VNC Path Not Valid');

end;

procedure TForm1.Button9Click(Sender: TObject);
var

  filepath: string;
  INI: TINIFile;

begin
  OpenDialog1.Filter := 'Application|*.exe';

  if OpenDialog1.Execute then
  begin
    winscppath.Text := OpenDialog1.FileName;
  end
  else
    exit;

  if winscppath.Text = '' then
    exit;

  try
    try

      filepath := getsetpath;

      INI := TINIFile.Create(filepath + 'snmpviewer.ini');


      ini.Writestring('config', 'winscppath', winscppath.Text);

      ShowMessage('WinSCP Path Saved');
    finally
      Ini.Free;
    end;
  except
    on E: Exception do
    begin
      DumpExceptionCallStack(E, 'showmessage');
    end;

  end;

end;


procedure TForm1.DumpExceptionCallStack(E: Exception; how: string);
var
  I: integer;
  Frames: PPointer;
  Report: string;
begin
  Report := 'Program exception! ' + LineEnding + 'Stacktrace:' +
    LineEnding + LineEnding;
  if E <> nil then
  begin
    Report := Report + 'Exception class: ' + E.ClassName + LineEnding +
      'Message: ' + E.Message + LineEnding;

    Report := Report + BackTraceStrFunc(ExceptAddr);
    Frames := ExceptFrames;
    for I := 0 to ExceptFrameCount - 1 do
      Report := Report + LineEnding + BackTraceStrFunc(Frames[I]);
    if how = 'showmessage' then
    begin
      ShowMessage(Report);
      //halt;
    end
    else
    begin

      //logit(Tram(FormatDateTime('h:nn:ss AM/PM', now) + ' ' +
      // FormatDateTime('MM/DD/YYYY', now)) + ' ERROR: ' + report);

    end;
  end;
  //Halt; // End of program execution
end;

function tform1.hsToHourMinSec(HSsecondsstr: string): string;
var
  t: extended;
  hssecondsdbl: extended;
  convf: integer;
begin
  val(HSsecondsstr, hssecondsdbl, convf);
  if convf = 0 then
  begin

    t := (hssecondsdbl * 10) / (MSecsPerDay);

    Result := IntToStr(trunc(t)) + ':' + FormatDateTime('hh:nn:ss.zzz',
      t, [fdoInterval]);
  end
  else
    Result := HSsecondsstr;
end;

function tform1.getsetpath(): string;
var
  PersonalPath: array[0..MaxPathLen] of char; //Allocate memory
  filepath: string;
begin
  try
    PersonalPath := '';
    SHGetSpecialFolderPath(0, PersonalPath, CSIDL_PERSONAL, False);

    filepath := PersonalPath + '\snmpviewer\';
    if not directoryexists(filepath) then
      createdir(filepath);
    Result := filepath;
  except
    on E: Exception do
    begin
      DumpExceptionCallStack(E, 'showmessage');
    end;
  end;
end;


procedure tform1.savesettings(Sender: TObject);
var

  filepath: string;
  INI: TINIFile;

begin

  try
    try

      filepath := getsetpath;

      INI := TINIFile.Create(filepath + 'snmpviewer.ini');


      ini.Writestring('config', 'community', snmpstring.Text);
      ini.Writestring('config', 'host', ipaddr.Text);
      ShowMessage('Settings Saved');
    finally
      Ini.Free;
    end;
  except
    on E: Exception do
    begin
      DumpExceptionCallStack(E, 'showmessage');
    end;

  end;

end;

procedure tform1.loadsettings(Sender: TObject);
var
  hostlisttemp: string;
  result,filepath: string;
  INI: TINIFile;

begin

  try

    result:='';

    //system tab

    sd.Text := Result;

    oi.Text := Result;

    sut.Text := Result;

    sc.Text := Result;

    sn.Text := Result;

    sl.Text := Result;

    ss.Text := Result;

    //CPU tab

    ml1.Text := Result;

    ml5.Text := Result;

    ml15.Text := Result;

    uctp.Text := Result;

    uct.Text := Result;

    sctp.Text := Result;

    sct.Text := Result;

    ictp.Text := Result;

    ict.Text := Result;

    nct.Text := Result;

    //memory tab

    tss.Text := Result;

    ass.Text := Result;

    Tram.Text := Result;

    tru.Text := Result;

    trf.Text := Result;

    trs.Text := Result;

    trb.Text := Result;

    tcm.Text := Result;

    lmessage.Text := '';

    sgResultsdisk.clean;
    sgresultsdisk.RowCount := 2;
    sgResultsprocesses.Clean;
    sgResultsprocesses.rowcount := 2;
    sgResultstcpconnections.Clean;
    sgResultstcpconnections.rowcount := 2;
    sgResultsiftable.clean;
    sgresultsiftable.rowcount := 2;
    sgresultsipaddress.clean;
    sgresultsipaddress.rowcount := 2;
    sgresultsroutetable.clean;
    sgresultsroutetable.rowcount := 2;
    sgresultsattable.clean;
    sgresultsattable.rowcount := 2;
    sgResultsdiskscan.rowcount := 2;
    sgResultsdiskscan.clean;
    scanmessage.Text := result;

    try


      filepath := getsetpath;


      INI := TINIFile.Create(filepath + 'snmpviewer.ini');


      snmpstring.Text := ini.readstring('config', 'community', 'pace_snmp');
      puttypath.Text := ini.readstring('config', 'puttypath', '');
      vncpath.Text := ini.readstring('config', 'vncpath', '');
      winscppath.Text := ini.readstring('config', 'winscppath', '');
      rdpath.Text := ini.readstring('config', 'rdpath', '');
      hostlisttemp := ini.readstring('config', 'hostlist',
        '"HOST1","HOST2"');

      listboxhostlist.Clear;
      ipaddr.Clear;

      listboxhostlist.items.DelimitedText := hostlisttemp;
      ipaddr.Items.delimitedtext := hostlisttemp;

      ipaddr.Text := ini.readstring('config', 'host', '');

    finally
      Ini.Free;
    end;


    {for j:=0 to ipaddr.items.Count -1 do
    begin
    listboxhostlist.items.Add(ipaddr.items[j]);
    end;}

  except
    on E: Exception do
    begin
      DumpExceptionCallStack(E, 'showmessage');
    end;

  end;

end;

function tform1.GetIPAddress(hostname: string): string;
type
  pu_long = ^u_long;
var
  varTWSAData: TWSAData;
  varPHostEnt: PHostEnt;
  varTInAddr: TInAddr;
  //namebuf : Array[0..255] of char;
begin
  if trim(hostname) = '' then
  begin
    Result := '';
    exit;
  end;

  if WSAStartup($101, varTWSAData) <> 0 then
    Result := ''
  else
  begin

    //gethostname(namebuf,sizeof(namebuf));
    try
      varPHostEnt := gethostbyname(PAnsiChar(hostname));
      varTInAddr.S_addr := u_long(pu_long(varPHostEnt^.h_addr_list^)^);
      Result := inet_ntoa(varTInAddr);
    except
      on E: Exception do
        Result := '';
    end;
  end;
  WSACleanup;
end;

function tform1.passedToHourMinSec(mspassed: integer): string;
var
  t: extended;

begin

  t := (mspassed) / (MSecsPerDay);
  Result := IntToStr(trunc(t)) + ':' + FormatDateTime('hh:nn:ss.zzz',
    t, [fdoInterval]);
end;

function tform1.PingHostfun(const Host: string): string;
var
  low, high, timetotal, j, success: integer;
  ipaddrval: string;
begin
  Result := '';

  ipaddrval := GetIPAddress(ipaddr.Text);
  if ipaddrval = '' then
  begin
    Result := 'Could not resolve IP Address!';
    application.ProcessMessages;
    exit;
  end;

  with TPINGSend.Create do

    try
      success := 0;
      timetotal := 0;
      low := 99999;
      high := 0;
      Result := 'Pinging ' + ipaddrval + ' with ' + IntToStr(PacketSize) +
        ' bytes of data:' + #13#10;
      for j := 1 to 4 do
      begin
        if Ping(ipaddrval) then
        begin
          if ReplyError = IE_NoError then
          begin
            Result := Result + 'Reply from ' + ReplyFrom + ': bytes=' +
              IntToStr(PacketSize) + ' time=' + IntToStr(PingTime) +
              ' TTL=' + IntToStr(Ord(TTL)) + #13#10;
            timetotal := timetotal + pingtime;
            success := success + 1;
            if pingtime < low then
              low := pingtime;
            if pingtime > high then
              high := pingtime;
          end

          else
            Result := Result + 'Reply from ' + ReplyFrom + ': ' +
              ReplyErrorDesc + #13#10;
        end
        else
        begin
          Result := Result + 'Ping Failed!' + #13#10;
          low := 0;
          break;
        end;
      end;

      Result := Result + #13#10 + 'Ping statistics for ' + ipaddrval + ':'#13#10;
      Result := Result + 'Packets: Sent = ' + IntToStr(j) + ', Received = ' +
        IntToStr(success) + ', Lost = ' + IntToStr(j - success) +
        ' (' + IntToStr(trunc((100 - ((success / j) * 100)))) + '% loss)' + #13#10;
      Result := Result + 'Approximate round trip times in milli-seconds: ' +
        IntToStr(timetotal) + 'ms' + #13#10;
      Result := Result + 'Minimum = ' + IntToStr(low) + 'ms, Maximum = ' +
        IntToStr(high) + 'ms, Average = ' + IntToStr(trunc(timetotal / j)) +
        'ms' + #13#10;

    finally
      Free;
    end;
end;



function tform1.Pingtracertrttl(const Host: string): string;
var
  j: integer;

begin

  Result := '';
  with TPINGSend.Create do
    try
      for j := 1 to 2 do
      begin
        if Ping(Host) then
        begin
          if ReplyError = IE_NoError then
          begin
            Result := Result + IntToStr(PingTime) + ' ms    ';
          end

          else
            Result := Result + '*     ';
        end
        else
          Result := Result + '*     ';
      end;

    finally
      Free;
    end;
end;

function tform1.TraceRouteHostfun(const Host: string): string;
var
  Ping: TPingSend;
  ttl: byte;
  hopcount: integer;
  ipaddrval: string;
begin

  ipaddrval := GetIPAddress(ipaddr.Text);
  if ipaddrval = '' then
  begin
    Result := 'Could not resolve IP Address!';
    application.ProcessMessages;
    exit;
  end;

  hopcount := 0;
  Result := 'Tracing route to ' + ipaddrval + ' over a maximum of 30 hops' + crlf + crlf;

  Ping := TPINGSend.Create;
  try
    ttl := 1;
    repeat
      hopcount := hopcount + 1;
      ping.TTL := ttl;
      Inc(ttl);
      if ttl > 31 then
        Break;
      if not ping.Ping(ipaddrval) then
      begin
        Result := Result + IntToStr(hopcount) + '    ' + cAnyHost + ' Timeout' + CRLF;
        continue;
      end;
      if (ping.ReplyError <> IE_NoError) and (ping.ReplyError <>
        IE_TTLExceed) then
      begin
        Result := Result + IntToStr(hopcount) + '    ' + Ping.ReplyFrom +
          ' ' + Ping.ReplyErrorDesc + CRLF;
        break;
      end;

      Result := Result + IntToStr(hopcount) + '    ' + IntToStr(Ping.PingTime) +
        ' ms    ' + Pingtracertrttl(Ping.ReplyFrom) + Ping.ReplyFrom + CRLF;
    until ping.ReplyError = IE_NoError;

    Result := Result + crlf + 'Trace complete.';

  finally
    Ping.Free;
  end;
end;

procedure tform1.runprogramex(procommandline: string);

var
  RunProgram: TProcess;

begin
  try
    try
      RunProgram := TProcess.Create(nil);
      RunProgram.CommandLine := procommandline;
      RunProgram.Execute;
    finally
      RunProgram.Free;
    end;
  except
    on E: Exception do





    begin
      DumpExceptionCallStack(E, 'showmessage');
    end;

  end;

end;

end.
