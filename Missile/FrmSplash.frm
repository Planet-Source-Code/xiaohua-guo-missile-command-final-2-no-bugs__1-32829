VERSION 5.00
Begin VB.Form FrmSplashL 
   Appearance      =   0  'Flat
   AutoRedraw      =   -1  'True
   BackColor       =   &H00000000&
   BorderStyle     =   0  'None
   ClientHeight    =   3870
   ClientLeft      =   210
   ClientTop       =   1365
   ClientWidth     =   4335
   ClipControls    =   0   'False
   ControlBox      =   0   'False
   KeyPreview      =   -1  'True
   LinkTopic       =   "Form2"
   LockControls    =   -1  'True
   MaxButton       =   0   'False
   MinButton       =   0   'False
   Moveable        =   0   'False
   Picture         =   "FrmSplash.frx":0000
   ScaleHeight     =   3870
   ScaleWidth      =   4335
   ShowInTaskbar   =   0   'False
   StartUpPosition =   2  'CenterScreen
End
Attribute VB_Name = "FrmSplashL"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
'******************************************************************************************'
' Reviewing comment reading order should be:  (it should make reading easier to understand)'
'******************************************************************************************'
' 1. read modfunctions to understand how animation works, very importatn variables and other global functions/subs
' 2. read frmnew to understand how a new game is made
' 3. read Frmconfig to understand how the keys are linked to the main game
' 4. read Main to understand how the game works
' 5. read the rest, they don't matter too much, mostly all separate and not linked to each other

Dim MsgboxAns1 As Integer                           ' msg answer
Dim lHdc As Long                                    ' used by display mode



Private Sub Form_Load()

'*********************'
' checks display mode '
'*********************'
lHdc = CreateIC("DISPLAY", 0&, 0&, 0&)                              ' gets the number required to find out the color bit
OriginalX = -1                                                  ' saying no res change at start
If GetSystemMetrics(0) <> 1024 Or GetDeviceCaps(lHdc, 12) < 16 Then ' if not at 1024 or 16 bit color
    OriginalX = GetSystemMetrics(0)                                 ' res needs changing
    OriginalC = GetDeviceCaps(lHdc, 12)                             ' colur needs changing
    If EnumDisplaySettings(0&, 9, DispMode) = False Then            ' test display mode for 1024x768x16 ( mode number 9)
        MsgBox "Warning! Your Screen Resolution is not 1024x768x16" & vbNewLine & _
            "Your system cannot run at 1024x768x16! This program will Terminate!", vbExclamation, "Error"
        End
    Else
        'MsgboxAns1 = MsgBox("Warning! Your screen resolution is not 1024x768 " & vbNewLine & _
            "For some reason at resolution higher than 1024x768 codes starts to run differently " & _
            "and some windows are not displayed in the correct order So i am limiting you to 1024x768x16" & vbCrLf & _
            "Would you like to change to 1024x768x16 right now?", vbOKCancel + vbQuestion, "Error")
        'If MsgboxAns1 = vbOK Then
            ' set screen res
            With DispMode
                .dmBitsPerPel = 16: .dmPelsHeight = 768: .dmPelsWidth = 1024
            End With
            
            DModeChangeStat = ChangeDisplaySettings(DispMode, &H1)
            Select Case DModeChangeStat
            ' Check for errors, there should be none since i just enumerated the display setting, but just in case
            Case 0
                'MsgBox "The display settings change was successful", vbInformation
            Case 1
                MsgBox "The computer must be restarted in order for the graphics mode to work", vbQuestion
                End
            Case -1
                MsgBox "The display driver failed the specified graphics mode", vbCritical
                End
            Case -2
                MsgBox "The graphics mode is not supported", vbCritical
                End
            Case -3
                MsgBox "Unable to write settings to the registry", vbCritical
                ' Windows NT Only
                End
            Case -4
                MsgBox "An invalid set of flags was passed in", vbCritical
                End
            End Select
        'Else
         '   End
        'End If
    End If
End If
OriginalCursorPath = GetSettingString(HKEY_CURRENT_USER, "control panel\cursors\", "arrow", "")     ' get the location of teh current cursor
If Left(OriginalCursorPath, 12) = "%SYSTEMROOT%" Then                                               ' if it's in teh system root, then convert the system root name to c:\windows
    OriginalCursorPath = "c:\windows" & Right(OriginalCursorPath, Len(OriginalCursorPath) - 12)
End If
FrmSplashL.Show                                                     ' show it
sndPlaySound App.Path + "\sound\establish.wav", SND_ASYNC Or SND_NODEFAULT
Load Main                                                           ' load main
End Sub
