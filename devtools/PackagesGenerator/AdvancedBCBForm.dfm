object frmAdvancedBCB: TfrmAdvancedBCB
  Left = 241
  Top = 145
  BorderStyle = bsDialog
  Caption = 'Advanced BCB options'
  ClientHeight = 158
  ClientWidth = 404
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object lblExpl: TLabel
    Left = 16
    Top = 12
    Width = 373
    Height = 45
    AutoSize = False
    Caption = 
      'Some BCB packages require additional libraries (.lib) files to c' +
      'ompile correctly. Please indicate below the libraries required b' +
      'y each version of BCB as a comma separated list of names'
    WordWrap = True
  end
  object lblBCB5: TLabel
    Left = 16
    Top = 68
    Width = 27
    Height = 13
    Caption = 'BCB5'
  end
  object lblBCB6: TLabel
    Left = 16
    Top = 92
    Width = 27
    Height = 13
    Caption = 'BCB6'
  end
  object bbtOk: TBitBtn
    Left = 156
    Top = 120
    Width = 81
    Height = 29
    Caption = 'OK'
    Default = True
    ModalResult = 1
    TabOrder = 0
    Glyph.Data = {
      42060000424D4206000000000000360400002800000020000000100000000100
      0800010000000C020000F00A0000F00A00000001000000010000006F00000F6F
      0F000070000002790200027B0200057E0500077C07000A7E0A000D7F0D001674
      1600137D130017791700197719001A761A00187818001E7A1E001D7F1D00217E
      2100237D2300237E230041414100424242004747470048484800494949004C4C
      4C004D4D4D004E4E4E0050505000515151005454540055555500565656005757
      5700585858005D5D5D005F5F5F00606060006363630066666600696969006A6A
      6A006B6B6B006D6D6D006E6E6E006F6F6F007070700072727200737373007474
      740075757500767676007777770078787800797979007B7B7B007C7C7C007D7D
      7D007E7E7E007F7F7F000B800B0001910100049F0400059F0500118311001282
      120018811800198D19001F8C1F001F9E1F0008A308000FA30F000DA40D000AAD
      0A000EB10E0015A4150014AF140018A218001CA31C0019AC190013B213001AB3
      1A0018B618001CB11C00238C230022912200239E2300259A2500269926002A91
      2A00299729002A972A002F932F002D952D002C962C002E942E002F942F00299A
      29002B982B003095300030983000309930003198310033993300359A3500369C
      3600379C3700389C38003A9D3A003B9E3B003C9F3C003D9F3D003F9F3F0024AF
      240021B5210039A139003FA03F0038AA3800429F420041A1410042A0420043A2
      430042A6420045A2450046A3460045A5450046A7460041A8410040AA400048A2
      480048A4480049A4490049A749004AA44A004BA54B004CA34C004CA54C004CA7
      4C004EA74E004FA74F004EA84E0051A6510052A6520052A8520053A9530054A8
      540054A9540056AB560059AB59005AAB5A005AAC5A005BAD5B005DAE5D005EAD
      5E005EAF5E0060AE600061AF610062B0620063B0630063B1630065B2650067B2
      670067B3670068B4680069B469006BB56B006CB66C006FB76F0070B8700076BB
      760077BB77007FB07F0079BC79007ABD7A008080800081818100828282008383
      830084848400858585008686860088888800898989008A8A8A008B8B8B008C8C
      8C008D8D8D008E8E8E008F8F8F00909090009191910092929200939393009494
      9400959595009696960097979700999999009A9A9A009B9B9B009E9E9E009F9F
      9F0085B785008ABB8A00A0A0A000A1A1A100A2A2A200A5A5A500A6A6A600AEAE
      AE00BABABA0080C080008CC68C008DC68D009DCF9D00A3D6A300B1D8B100B4D9
      B400C1C1C100C8C8C800C9C9C900D2D9DC00F8F9FA00FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000001DD01DE0CDF
      0004DEDDDDDE0CDF01DE01DD00000014DECA01090D0D0E0B0A0807060402ABDE
      DECE161A041C00081D1C1B191815C7DE00000020DF4044595C5F5E61564E4B48
      3F3D00DFDF1E24272929292A2A2A2827241F14DF00000020DF435E6A6F6E73D7
      DF715350493E03DFDF23292F333333DADF33302E292417DF00000020DF556B79
      827D7ADFDFDF72524A4605DFDF2630373A3939DFDFDF35322C2619DF00000020
      DF5E78888B897E80DFDFDF514C473CDFDF2936AEB0AF3B3ADFDFDF312D271CDF
      00000020DF68868F908C847F75DFDFDF4F4D41DFDF2EAEB2B3B1AE3937DFDFDF
      2D281EDF00000003DF7090000ADF00064542DFDF34B30ADF0003281FDF000000
      0003DF7B96000ADF00065710DFDF37B70ADF00032920DF0000000020DF8B9F9C
      948D817069DFDFDF585B11DFDFB0BEBCB6B139342FDFDFDF282921DF00000020
      DF90A6A399918776DFDFDF5A625D13DFDFB3C4C1B9B33B35DFDFDF282A2922DF
      00000020DF9AADA89E958EDFDFDF6765646012DFDFBACDC6BDB6B1DFDFDF2D2B
      2B2922DF00000020DFA5D5D3A7A19BD9DF8883776C630FDFDFC3D1CFC5C0BBDC
      DFAE3A36312A1EDF00000020DFAAD6D4ACA8A4A09D98938A77600CDFDFC9D2D1
      CCC6C2BFBDB9B5B036291CDF00000020DED8A9A297928B85867C746D6654CBDE
      DEDBC8C0B8B4B03BAE3835322B25D0DE000001DD01DE0CDF0004DEDDDDDE0CDF
      01DE01DD0001}
    NumGlyphs = 2
  end
  object edtBCB5: TEdit
    Left = 56
    Top = 64
    Width = 333
    Height = 21
    TabOrder = 1
  end
  object edtBCB6: TEdit
    Left = 56
    Top = 88
    Width = 333
    Height = 21
    TabOrder = 2
  end
end
