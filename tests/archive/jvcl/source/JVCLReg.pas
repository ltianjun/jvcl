{-----------------------------------------------------------------------------
The contents of this file are subject to the Mozilla Public License
Version 1.1 (the "License"); you may not use this file except in compliance
with the License. You may obtain a copy of the License at
http://www.mozilla.org/MPL/MPL-1.1.html

Software distributed under the License is distributed on an "AS IS" basis,
WITHOUT WARRANTY OF ANY KIND, either expressed or implied. See the License for
the specific language governing rights and limitations under the License.

The Original Code is: JVCLReg.PAS, released on 2001-02-28.

The Initial Developer of the Original Code is Sébastien Buysse [sbuysse@buypin.com]
Portions created by Sébastien Buysse are Copyright (C) 2001 Sébastien Buysse.
All Rights Reserved.

Contributor(s): Michael Beck [mbeck@bigfoot.com].

Last Modified: 2000-02-28

You may retrieve the latest version of this file at the Project JEDI's JVCL home page,
located at http://jvcl.sourceforge.net

Known Issues:
-----------------------------------------------------------------------------}
{$A+,B-,C+,D+,E-,F-,G+,H+,I+,J+,K-,L+,M-,N+,O+,P+,Q-,R-,S-,T-,U-,V+,W-,X+,Y+,Z1}
{$I JEDI.INC}

unit JVCLReg;

{$OBJEXPORTALL On}

interface

procedure Register;

implementation

{$R JVCLReg.dcr}
{$R JvP3Reg.dcr}
{$R jvWinDialogs.dcr}


uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, ExtCtrls, Dlgs,

  //About JVCL
  JvJVCLAbout, JVCLVer,

  //Additional
  JvImage, JvBitBtn, JvSpeedButton, JvMaskEdit, JvStaticText, JvCheckListBox,
  JvBevel, JvScrollBox, JvStringGrid, JvDrawGrid, JvShape, JvControlBar,
  JvSplitter,

  //Standard
  JvEdit, JvCombobox, JvCheckBox, JvRadioButton, JvButton,
  JvLabel, JvScrollBar, JvRadioGroup, JvPanel, JvMemo,

  //Edits
  JvCustomBox, JvFileNameBox, JvDirectoryBox, JvImageBox, JvButtonBox,
  JvFloatEdit, JvCalculatorBox, JvTypedEdit,

  //Controls
  JvPlaylist, JvButtonShaped, JvFavoritesButton, JvClock, JvStartMenuBtn,
  JvScrollText, JvRecentMenuBtn, JvControlPanel,
  JvGradientCaption,
  JvZoom, JvWaitingGradient, JvSpecialProgress, JvWaitingProgress,
  JvGammaPanel, JvSlider, JvSpinEdit,

  //Mp3
  JvBreatheSkin, JvId3v2, JvVisualId3v2, JvWinampApi, JvId3v1, JvVisualId3v1,

  //Multimedia
  JvSoundControl, JvDeviceChanged, JvImageTransform, JvImageRotate,
  JvWavePlayer, JvStarfield, JvJoystick, JvSpecialImage,

  //Labels
  JvHotLink, JvBlinkingLabel, JvScrollingLabel, JvReversedLabel,
  JvRealLabel, JvSpecialLabel, JvWinampLabel, JvAngleLabel, JvBouncingLabel,
  JvAppearingLabel, JvLinkLabel,

  //Forms
  JvFormWallpaper, JvAnimTitle, JvPerforated,
  JvTransparentForm, JvTrayIcon, JvFormAnimatedIcon,
  JvAppAnimatedIcon, JvFormPlace, JvFormAnimation,
  JvAutoSizeCompo, JvMagnet, JvGradient,

  //Convert
  JvStringListToHtml, JvRgbToHtml, JvStrToHtml, JvRichEditToHtml, JvFormToHtml,

  //Internet
  JvHttpGrabber, JvFtpGrabber, JvHtmlParser, JvMultiHttpGrabber,

  JvSimpleXml,

  //Utils
  JvDirectories, JvMemoryInfos, JvSerialMaker, JvThread, JvRegistry,
  JvApplication, JvAlarms, JvKeyboardStates, JvDragDrop, JvSearchFile,

  //Utils 2
  JvMru, JvRas32, JvSystemPopup, JvMousePositionner,
  JvWinHelp, JvEasterEgg, JvPrint, JvThreadTimer,
  JvTimeLimit, JvScreenSaver, JvClipboardViewer, JvSystemColors,
  JvPatchFile, JvComputerInfo, JvCommStatus, JvLogFile,
  JvCabFile, JvDataEmbedded,

  //Utils 3
  JvCaesarCipher, JvVigenereCipher, JvXorCipher, JvGenetic,
  JvTranslator,

  //Dialogs
  JvCommonDialogD, JvBaseDlg,
  JvSelectDirectory, JvPasswordForm,
  JvExchListboxes, JvLoginDlg, JvSerialDlg, JvNagScreen,
  JvTipsOfDay, JvImageDlg, JvCalculator, JvProgressDlg, JvDiskPrompt,
  JvCopyError, JvDeleteError, JvRenameError, JvPageSetupTitled, JvPageSetup,

  //WinDialogs
  JvBrowseFolder, JvObjPickerComp, jvConnectNetwork, jvDisconnectNetwork,
  jvAddPrinter, jvWinDialogs,

  //Win32
  JvStatusBar,
  JvTabControl, JvRichEdit,
  JvProgressBar, JvUpDown, JvHotKey, JvAnimate, JvDateTimePicker,
  JvMonthCalendar, JvListView, JvHeaderControl, JvToolBar,
  JvCoolBar, JvPageScroller,
  JvHotKeyEx,

  //Image types
  JvPcx, JvAni,

  //Shapes
  JvArrow,

  //Peter Below Goodies
  JvBMPListBox, JvButtonDrawGrid,
  JvCoupler, JvHighlighter, JvMLButton, JvMousePanel, JvMultilineListbox, JvMultiselectChecklistbox, JvObserverLabel,
  JvObservibleCheckBox, JvOneSizeFitsAllButton, JvGroupBox,
  JvReorderListBox, JvPopupMemo,
  JvSizeablePanel, JvSpacer, JvSyncSplitter, JvTextcontainer, JvTransparentPanel,

  //Petr Vones Components
  JVCLMiscal,
  JvComCtrls, JvCtrls, JvDdeCmd, JvDialogs, JvMail, JvPerfMon95, JvSysComp,

{$IFNDEF D6PersonalEdition}
  //DB-Aware components
  JvDBDateTimePicker,
{$ENDIF}

  //Editors
  JvDataEmbeddedEditor, JvFormWallpaperEditor, JvPatcherEditor,
  JvHtmlParserEditor, JvAlarmsEditor,
  JvBaseDlgEditor, JvCommonDialogDEditor,

  Dialogs, ExptIntf, ToolIntf, ExtDlgs, StdCtrls, Buttons,
{$IFDEF DELPHI5}DsgnIntf, {$ENDIF}{$IFDEF DELPHI6_UP}DesignEditors, DesignIntf, {$ENDIF}
  JvTypes, JvArrowBtn, JvBmpAnim, JvCaptionButton,
  JvColorCombo, JvDriveCtrls, JvFindReplace, JvInstallLabel, JvRollOut, JvScrollPanel,
  JvTransBtn2, JvTimeLine, JvTimeLineEdit, JvShFileOp, JvAppHotKey,

  JvCaptionPanel, JvColorBtn, JvColorBox, JvColorForm, JvOutEdit,
  JvImagewindow, JvListComb, JvLookout, JvProfiler32, JvRegTV,
  JvSearchFiles, JvTipWin, JvTransBtn, ImgList, JvLCProperty, JvTipProperty,

  JvChangeNotify, JvEnterTab, JvFindFiles,
  JvFileInfo, JvItemsPanel, JvDsgnEditors, JvCntScr, JvCmdEdit,
  JvTMTL, JvCalendar, JvUCB, JvChNtfyProperty, JvOLBar, JvOLBarEditor, JvSHFmt;

{******************************************************************************}

procedure RegPropEds;
begin
  RegisterPropertyEditor(TypeInfo(string), TJvCreateProcess, '', TJvExeNameProperty);
  RegisterPropertyEditor(TypeInfo(string), TJvCreateProcess, 'CurrentDirectory', TJvDirectoryProperty);
  RegisterPropertyEditor(TypeInfo(string), TJvFileTreeScan, 'RootDirectory', TJvDirectoryProperty);
  RegisterPropertyEditor(TypeInfo(TJvImgBtnKind), TJvImgBtn, 'Kind', TJvNosortEnumProperty);
  RegisterPropertyEditor(TypeInfo(string), TJvPerfStatItem, 'PerfStatKey', TJvPerfStatProperty);
  RegisterPropertyEditor(TypeInfo(TStream), TJvDataEmbedded, 'Data', TJvDataEmbeddedEditor);
  RegisterPropertyEditor(TypeInfo(TPicture), TJvFormWallpaper, 'Image', TJvFormWallpaperEditor);
  RegisterPropertyEditor(TypeInfo(TstringList), TJvPatchFile, 'Differences', TJvPatcherEditor);
  RegisterPropertyEditor(TypeInfo(TstringList), TJvAlarms, 'Alarms', TJvAlarmsEditor);
  RegisterPropertyEditor(TypeInfo(TParserInfos), TJvHtmlParser, 'Parser', TJvHtmlParserEditor);
  RegisterPropertyEditor(TypeInfo(TJVCLAboutInfo), nil, 'AboutJVCL', TJVCLAboutDialogProperty);
  RegisterPropertyEditor(TypeInfo(TImageIndex), TJvLookoutButton, 'ImageIndex', TLookOutImageIndexProperty);
  RegisterPropertyEditor(TypeInfo(TImageIndex), TJvExpressButton, 'ImageIndex', TLookOutImageIndexProperty);
  RegisterPropertyEditor(TypeInfo(string), TJvChangeItem, 'Directory', TDirectoryPropertyEditor);
  RegisterPropertyEditor(TypeInfo(TDate), nil, '', TDateExProperty);
  RegisterPropertyEditor(TypeInfo(TTime), nil, '', TTimeExProperty);
  RegisterPropertyEditor(TypeInfo(TDateTime), nil, '', TDateTimeExProperty);
  RegisterPropertyEditor(typeinfo(integer), TJvCustomOutlookBar, 'ActivePageIndex', TOLBarActivePageEditor);
end;

procedure RegCompEds;
begin

  RegisterComponentEditor(TJvMail, TJvMailEditor);
  RegisterComponentEditor(TCommonDialog, TJvOpenDialogEditor);
  RegisterComponentEditor(TJvCommonDialog, TJvBaseDlgEditor);
  //  RegisterComponentEditor(TJvCommonDialogP, TJvBaseDlgEditorP);
  RegisterComponentEditor(TJvCommonDialogD, TJvCommonDialogDEditor);
  //  RegisterComponentEditor(TCommonDialog, TJvBrowseDialogEditor);
  RegisterComponentEditor(TJvCustomTimeLine, TTimeLineEditor);

  RegisterComponentEditor(TJvTipWindow, TJvTipPropertyEditor);
  RegisterComponentEditor(TJvLookOut, TLookOutEditor);
  RegisterComponentEditor(TJvLookOutPage, TLookOutPageEditor);
  RegisterComponentEditor(TJvImageListBox, TJvListCombProperty);
  RegisterComponentEditor(TJvImageComboBox, TJvListCombProperty);
  RegisterComponentEditor(TJvExpress, TExpressEditor);
  RegisterComponentEditor(TJvChangeNotify, TJvChangeNotifyEditor);
  RegisterComponentEditor(TJvCustomOutlookBar, TOLBarComponentEditor);
end;

procedure RegComps;
begin
  // ===========================================
  // Jv Standard
  // ===========
  RegisterComponents('Jv Standard', [
    TJvLabel,
      TJvEdit,
      TJvMemo,
      TJvButton,
      TJvCheckBox,
      TJvRadioButton,
      TJvListBox,
      TJvCombobox,
      TJvScrollBar,
      TJvGroupBox,
      TJvRadioGroup,
      TJvPanel
      ]);

  
  // Jv Additional
  // =============
  RegisterComponents('Jv Additional', [
    TJvBitBtn,
      TJvImgBtn,
      TJvSpeedButton,
      TJvMultilineButton,
      TJvOneSizeFitsAllButton,
      TJvButtonShaped,
      TJvArrowButton,
      TJvTransparentButton,
      TJvTransparentButton2,

    TJvPopupMemo,
      TJvStringGrid,
      TJvDrawGrid,
      TJvButtonDrawGrid,

    TJvMultilineListbox,
      TJvReorderListBox,
      TJvBMPListBox,
      TJvCheckListBox,
      TJvImageListBox,

    TJvFontComboBox,
      TJvColorComboBox,
      TJvImageComboBox,

    TJvScrollBox,
      TJvImage,
      TJvImageWindow,
      TJvImageSquare,
      TJvShape,
      TJvBevel,
      TJvSplitter,
      TJvSyncSplitter,

    TJvControlBar,

    TJvStaticText,
      TJvScrollText,
      TJvContentScroller,
      TJvZoom,

    TJvMaskEdit,
      TJvCommandEdit,
      TJvSpinEdit,
      TJvCoupler,

    TJvInstallLabel,
      TJvObserverLabel,
      TJvObservibleCheckBox,

    TJvMousePanel,
      TJvSizeablePanel,
      TJvTransparentPanel,
      TJvCaptionPanel,
      TJvItemsPanel,
      TJvRollout,

    JvSpacer.TJvSpacer,
      TJvDivider,
      TJvArrow,
      TJvHighlighter
      ]);

  // Jv Win32
  // ========
  RegisterComponents('Jv Win32', [

    TJvTabControl,
      TJvPageControl,
      TJvRichEdit,
      TJvTrackBar,
      TJvProgressBar,
      TJvUpDown,
      TJvHotKey,
      TJvHotKeyEx,
      TJvApplicationHotKey,
      TJvAnimate,
      TJvDateTimePicker,
      TJvMonthCalendar,
      TJvMonthCalendar2,
      TJvTreeView,
      TJvListView,
      TJvHeaderControl,
      TJvStatusBar,
      TJvToolBar,
      TJvCoolBar,
      TJvPageScroller,
      TJvScrollingWindow,
      TJvIpAddress,
      TJvSHFileOperation,
      TJvTrayIcon
      ]);

  // Jv System
  // =========
  RegisterComponents('Jv System', [
    TJvDriveCombo,
      TJvDriveList,
      TJvDirectoryListBox,
      TJvFileListBox,
      TJvCaptionButton,
      TJvColorButton,
      TJvColorBox,
      TJvColorSquare,
      TJvRegistryTreeView,
      TJvUninstallListBox,
      TJvUninstallComboBox,

    TJvDragDrop,
      TJvAppDdeCmd,
      TJvPerfStat95,
      TJvCreateProcess,
      TJvChangeNotify,
      TJvFileInfo,
      TJvComputerInfo,
      TJvDirectories,
      TJvSystemColors,
      TJvClipboardViewer,
      TJvSystemPopup
      ]);

  // Jv Data Controls
  // ================
{$IFNDEF D6PersonalEdition}
  RegisterComponents('Jv Data Controls', [
    TJvDBDateTimePicker,
      TJvDBProgressBar
      ]);
{$ENDIF}

  // Jv Dialogs
  // ==========
  RegisterComponents('Jv Dialogs', [
    TJvBrowseFolder,
      TJvSelectDirectory,
      TJvOpenDialog,
      TJvSaveDialog,
      TJvOpenDialog2000,
      TJvSaveDialog2000,
      TJvConnectNetwork,
      TJvDisconnectNetwork,
      TJvPageSetupDialog,
      TJvPageSetupTitledDialog,
      TJvAddPrinterDialog,
      TJvFindFilesDialog,
      TJvFormatDrive,
      TJvColorDialog,
      TJvOrganizeFavoritesDialog,
      TJvComputerNameDialog,
      TJvControlPanelDialog,
      TJvAppletDialog,
      TJvChangeIconDialog,
      TJvShellAboutDialog,
      TJvRunDialog,
      TJvObjectPropertiesDialog,
      TJvNewLinkDialog,
      TJvAddHardwareDialog,
      TJvOpenWithDialog,
      TJvDiskFullDialog,
      TJvExitWindowsDialog,
      TJvOutOfMemoryDialog,
      TJvObjectPickerDialog,

    TJvPasswordForm,
      TJvExchListboxes,
      TJvLoginDlg,
      TJvSerialDlg,
      TJvNagScreen,
      TJvTipsOfDay,
      TJvTipWindow,
      TJvCalculator,
      TJvProgressDlg,
      TJvFindReplace,
      TJvImageDlg,
      TJvDiskPrompt,
      TJvCopyError,
      TJvDeleteError,
      TJvRenameError
      ]);

  // Jv Internet
  // ===========
  RegisterComponents('Jv Internet', [
    TJvHotLink,
      TJvHtmlParser,
      TJvHttpGrabber,
      TJvMultiHttpGrabber,
      TJvFtpGrabber,
      TJvSimpleXml,
      TJvStringListToHtml,
      TJvRichEditToHtml,
      TJvRgbToHtml,
      TJvStrToHtml,
      TJvFormToHtml,
      TJvMail,
      TJvRas32,
      TJvCommStatus
      ]);

  // Jv Custom
  // =========
  RegisterComponents('Jv Custom', [
    TJvLinkLabel,
      TJvGammaPanel,
      TJvOutlookBar,
      TJvLookOut,
      TJvLookOutButton,
      TJvExpress,
      TJvExpressButton,
      TJvTimeLine,
      TJvTMTimeline
      ]);

  // Jv Labels
  // =========
  RegisterComponents('Jv Labels', [
    TJvBlinkingLabel,
      TJvScrollingLabel,
      TJvReversedLabel,
      TJvRealLabel,
      TJvSpecialLabel,
      TJvAngleLabel,
      TJvBouncingLabel,
      TJvAppearingLabel
      ]);

  // Jv Multimedia
  // =============
  RegisterComponents('Jv Multimedia', [
    TJvPlaylist,
      TJvSoundControl,
      TJvDeviceChanged,
      TJvJoystick,
      TJvWavePlayer,
      TJvBmpAnimator,

    TJvFormWallpaper,
      TJvStarfield,
      TJvImageTransform,
      TJvImageRotate,
      TJvSpecialImage,
      TJvSlider,

    TJvGradient,
      TJvGradientCaption,
      TJvWaitingGradient,
      TJvSpecialProgress,
      TJvWaitingProgress,

    TJvId3v1,
      TJvId3v2,
      TJvVisualId3v1,
      TJvVisualId3v2,

    TJvWinampLabel,
      TJvBreatheSkin,
      TJvWinampApi
      ]);

  // Jv Forms
  // ========
  RegisterComponents('Jv Forms', [
    TJvFormMagnet,
      TJvAppAnimatedIcon,
      TJvFormAnimatedIcon,
      TJvAnimTitle,
      TJvTransparentForm,
      TJvPerforated,
      TJvFormPlace,
      TJvFormAnimation,
      TJvAutoSizeCompo
      ]);

  // Jv Utils
  // ========
  RegisterComponents('Jv Utils', [
    TJvTranslator,
      TJvTranslatorStrings,
      TJvTextContainer,

    TJvFavoritesButton,
      TJvStartMenuBtn,
      TJvRecentMenuBtn,
      TJvControlPanel,

    TJvSerialMaker,
      TJvTimeLimit,

    TJvScreenSaver,
      TJvPatchFile,
      TJvThread,
      TJvThreadTimer,
      TJvAlarms,
      TJvClock,

    TJvMruList,
      TJvWinHelp,
      TJvEasterEgg,
      TJvPrint,
      TJvMousePositionner,

    TJvDataEmbedded,

    TJvCaesarCipher,
      TJvVigenereCipher,
      TJvXorCipher,
      TJvGenetic,

    TJvFileTreeScan,
      TJvSearchFiles,
      TJvSearchFile,
      TJvLogFile,
      TJvCabFile,
      TJvProfiler,
      TJvApplication,
      TJvEnterAsTab,
      TJvKeyboardStates
      ]);

  // Jv Convert
  // ==========
  RegisterComponents('Jv Convert', [
    TJvFloatEdit,
      TJvFloatEdit2,
      TJvCurrencyEdit,
      TJvIntegerEdit,
      TJvYearEdit
      ]);

  // Jv Composites
  // =============
  RegisterComponents('Jv Composites', [
    TJvDirectoryBox,
      TJvFileNameBox,
      TJvImageBox,
      TJvButtonBox,
      TJvCalculatorBox
      ]);

{$IFNDEF D6PersonalEdition}
  //DB-Aware components
  RegisterComponents('Jv Data Controls', [TJvDBDateTimePicker, TJvDBProgressBar]);
{$ENDIF}
end;

procedure Register;
begin
  RegComps;
  RegPropEds;
  RegCompEds;
  RegisterClass(TJvLookOutPage);
end;

end.

