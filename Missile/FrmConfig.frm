VERSION 5.00
Begin VB.Form FrmConfig 
   BackColor       =   &H00000000&
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Control Config"
   ClientHeight    =   3450
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   5310
   ControlBox      =   0   'False
   Icon            =   "FrmConfig.frx":0000
   LinkTopic       =   "Form1"
   LockControls    =   -1  'True
   MaxButton       =   0   'False
   MinButton       =   0   'False
   Moveable        =   0   'False
   ScaleHeight     =   3450
   ScaleWidth      =   5310
   StartUpPosition =   2  'CenterScreen
   Begin VB.CommandButton CmdCancel 
      BackColor       =   &H00008000&
      Caption         =   "Cancel"
      BeginProperty Font 
         Name            =   "Impact"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   1800
      MaskColor       =   &H0000FF00&
      Style           =   1  'Graphical
      TabIndex        =   15
      Top             =   2280
      Width           =   1095
   End
   Begin VB.Frame FrmDescription 
      BackColor       =   &H00000000&
      Caption         =   "Mode Description"
      BeginProperty Font 
         Name            =   "Impact"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000C000&
      Height          =   1935
      Left            =   3000
      TabIndex        =   13
      Top             =   840
      Width           =   2175
      Begin VB.Label LblDescription 
         BackColor       =   &H00000000&
         BeginProperty Font 
            Name            =   "Comic Sans MS"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H0000FF00&
         Height          =   1575
         Left            =   120
         TabIndex        =   14
         Top             =   240
         Width           =   1935
      End
   End
   Begin VB.CommandButton CmdOK 
      BackColor       =   &H00008000&
      Caption         =   "OK, All Set! Pay Attention to Backward!"
      Default         =   -1  'True
      BeginProperty Font 
         Name            =   "Impact"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   465
      Left            =   120
      MaskColor       =   &H0000FF00&
      Style           =   1  'Graphical
      TabIndex        =   11
      Top             =   2880
      Width           =   5055
   End
   Begin VB.CommandButton CmdReset 
      BackColor       =   &H00008000&
      Caption         =   "Reset Controls"
      BeginProperty Font 
         Name            =   "Impact"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   120
      MaskColor       =   &H0000FF00&
      Style           =   1  'Graphical
      TabIndex        =   10
      ToolTipText     =   "Reset all controls to default"
      Top             =   2280
      Width           =   1575
   End
   Begin VB.Frame FrameKey 
      BackColor       =   &H00000000&
      Caption         =   "Keyboard Settings"
      BeginProperty Font 
         Name            =   "Impact"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000C000&
      Height          =   1335
      Left            =   120
      TabIndex        =   3
      Top             =   840
      Width           =   2775
      Begin VB.TextBox TxtRSM 
         Alignment       =   2  'Center
         BackColor       =   &H00000000&
         BeginProperty Font 
            Name            =   "Courier New"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H0000FF00&
         Height          =   285
         Left            =   2040
         MaxLength       =   1
         TabIndex        =   9
         ToolTipText     =   "Enter a letter for firing the right side missile launcher"
         Top             =   960
         Width           =   615
      End
      Begin VB.TextBox TxtMM 
         Alignment       =   2  'Center
         BackColor       =   &H00000000&
         BeginProperty Font 
            Name            =   "Courier New"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H0000FF00&
         Height          =   285
         Left            =   2040
         MaxLength       =   1
         TabIndex        =   8
         ToolTipText     =   "Enter a letter for firing the middle missile launcher"
         Top             =   600
         Width           =   615
      End
      Begin VB.TextBox TxtLSM 
         Alignment       =   2  'Center
         BackColor       =   &H00000000&
         BeginProperty Font 
            Name            =   "Courier New"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H0000FF00&
         Height          =   285
         Left            =   2040
         MaxLength       =   1
         TabIndex        =   7
         ToolTipText     =   "Enter a letter for firing the left side missile launcher"
         Top             =   240
         Width           =   615
      End
      Begin VB.Label LblR 
         Appearance      =   0  'Flat
         BackColor       =   &H00000000&
         Caption         =   "Fire Right Side Missiles"
         BeginProperty Font 
            Name            =   "Courier New"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H0000FF00&
         Height          =   255
         Left            =   120
         TabIndex        =   6
         Top             =   960
         Width           =   1815
      End
      Begin VB.Label LblM 
         Appearance      =   0  'Flat
         BackColor       =   &H00000000&
         Caption         =   "Fire Middle Missile"
         BeginProperty Font 
            Name            =   "Courier New"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H0000FF00&
         Height          =   255
         Left            =   120
         TabIndex        =   5
         Top             =   600
         Width           =   1335
      End
      Begin VB.Label LblL 
         Appearance      =   0  'Flat
         BackColor       =   &H00000000&
         Caption         =   "Fire Left Side Missile"
         BeginProperty Font 
            Name            =   "Courier New"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H0000FF00&
         Height          =   255
         Left            =   120
         TabIndex        =   4
         Top             =   240
         Width           =   1575
      End
   End
   Begin VB.Frame FrameMode 
      BackColor       =   &H00000000&
      Caption         =   "Control Mode"
      BeginProperty Font 
         Name            =   "Impact"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000C000&
      Height          =   615
      Left            =   120
      TabIndex        =   0
      Top             =   120
      Width           =   5055
      Begin VB.OptionButton OptKO 
         BackColor       =   &H00000000&
         Caption         =   "Keyboard Only"
         BeginProperty Font 
            Name            =   "Comic Sans MS"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H0000FF00&
         Height          =   225
         Left            =   3480
         TabIndex        =   12
         Top             =   240
         Width           =   1455
      End
      Begin VB.OptionButton OptMO 
         BackColor       =   &H00000000&
         Caption         =   "Mouse Only"
         BeginProperty Font 
            Name            =   "Comic Sans MS"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H0000FF00&
         Height          =   225
         Left            =   2160
         TabIndex        =   2
         Top             =   240
         Width           =   1335
      End
      Begin VB.OptionButton OptKM 
         BackColor       =   &H00000000&
         Caption         =   "Keyboard and Mouse"
         BeginProperty Font 
            Name            =   "Comic Sans MS"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H0000FF00&
         Height          =   225
         Left            =   120
         TabIndex        =   1
         Top             =   240
         Value           =   -1  'True
         Width           =   1935
      End
   End
End
Attribute VB_Name = "FrmConfig"
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

Dim Error1 As Boolean
Public ControlModeBack As String            ' backs up the old key settings so if they click cancel, it will go back
Public KeyLmBack As String                  ' i did it this way instead of saving the key setttings after they click ok is because i did this way frist and didn't want to change
Public KeyMmBack As String
Public KeyRmBack As String
Dim TextStr(0 To 19) As String              ' var to store all the names and score
Dim CountConfig As Integer                  ' for loop count var

Private Sub Form_Load()                     ' when loaded, check the settings and apply to form
ControlModeBack = Main.Controlmode          ' save backup copy of settings
KeyLmBack = Main.KeyLm
KeyMmBack = Main.KeyMm
KeyRmBack = Main.KeyRm
If Main.Controlmode = "km" Then             ' if setting is km, then make value of option and others right
    OptKM_Click
    OptKM.Value = True
ElseIf Main.Controlmode = "ko" Then
    OptKO_Click
    OptKO.Value = True
ElseIf Main.Controlmode = "mo" Then
    OptMO_Click
    OptMO.Value = True
End If
TxtLSM.Text = Main.KeyLm                    ' display the keys
TxtMM.Text = Main.KeyMm
TxtRSM.Text = Main.KeyRm

End Sub

Private Sub Form_Unload(Cancel As Integer)
Main.Enabled = True                         ' enable main
Main.Show
End Sub

Private Sub CmdOK_Click()
CheckError                                  ' check to see if there is no error

If Error1 = False Then                      ' if no error then
    ' check whole txt file as well as store the names and score for later use
    On Error GoTo MakeNewFile               ' if error occurs, then make new file
    Open App.Path + "\misc\config.txt" For Input As #1
    For CountConfig = 1 To 5
        If EOF(1) Then GoTo MakeNewFile     ' should not be end of file, make new file if error is detected
        Line Input #1, TextStr(CountConfig) ' skips the keys, since i'm going to rewrite this var, i can use it here to skip lines
    Next
    For CountConfig = 0 To 19
        If EOF(1) Then GoTo MakeNewFile     ' make new file if error occurs cos the file should not end right now
        Line Input #1, TextStr(CountConfig) ' scores names
    Next
    Close #1

    Open App.Path + "\misc\config.txt" For Output As #1
    Print #1, "DO NOT MODIFY THIS FILE"
    Print #1, Main.KeyLm
    Print #1, Main.KeyMm
    Print #1, Main.KeyRm
    Print #1, Main.Controlmode
    For CountConfig = 0 To 19
        Print #1, TextStr(CountConfig)      ' print out names and score again because otherwise, the rest will be blank
    Next
    Close #1
    Unload Me
End If
Exit Sub                                    ' don't restart check and don't make new file if there is an error

MakeNewFile:                                ' when error is detected, then make new file and then
On Error Resume Next
Close #1
NewScore
MsgBox "Exiting Configurations...", vbInformation, "Exit"
Unload Me
End Sub

Private Sub CmdCancel_Click()               ' if canceled, then restore the backup copy
Main.Controlmode = ControlModeBack
Main.KeyLm = KeyLmBack
Main.KeyMm = KeyMmBack
Main.KeyRm = KeyRmBack
Unload Me
End Sub

Private Sub CmdReset_Click()                ' reset controls
OptKM_Click                                 ' everything on this form is very direct, no need to explain
OptKM.Value = True
TxtLSM.Text = "A"
TxtMM.Text = "S"
TxtRSM.Text = "D"
Main.KeyLm = "A"
Main.KeyMm = "S"
Main.KeyRm = "D"
End Sub

Private Sub OptKM_Click()                   ' keyboard and mouse options
FrameKey.Enabled = True
LblL.Enabled = True
LblM.Enabled = True
LblR.Enabled = True
TxtLSM.Enabled = True
TxtMM.Enabled = True
TxtRSM.Enabled = True
TxtLSM.Text = Main.KeyLm
TxtMM.Text = Main.KeyMm
TxtRSM.Text = Main.KeyRm
LblDescription.Caption = "Use keyboard and mouse to fire missiles. This will combine both mouse and keyboard so you can click the mouse and use specific keyboard commands."
Main.Controlmode = "km"
End Sub

Private Sub OptKO_Click()                   ' keyboard only option
OptKM_Click
LblDescription.Caption = "This mode will only allow you to use the mouse to aim. If you click your mouse, nothing will happen. Only the keyboard will be recongnized. "
Main.Controlmode = "ko"
End Sub

Private Sub OptMO_Click()                   ' mouse only option
FrameKey.Enabled = False
LblL.Enabled = False
LblM.Enabled = False
LblR.Enabled = False
TxtLSM.Enabled = False
TxtMM.Enabled = False
TxtRSM.Enabled = False
LblDescription.Caption = "This mode will only allow you to use mouse. The keyboard will be disabled. This will automatically determine which missile launcher to use"
Main.Controlmode = "mo"
End Sub

Private Sub OptKM_LostFocus()               ' when focuses are lost, check erros to prevent them from leaving until there are no errors
CheckError                                  ' if user has conflict with controls and clicks from KM to KO then it will show the error message 2 times
End Sub

Private Sub OptKO_LostFocus()
CheckError
End Sub

Private Sub TxtLSM_KeyPress(KeyAscii As Integer)
If IsAllowed(KeyAscii) = True Then          ' limit to one letter on txt box
    TxtLSM.Text = Chr(KeyAscii)
    TxtLSM.Text = UCase(TxtLSM.Text)
    Main.KeyLm = TxtLSM.Text
End If
End Sub

Private Sub TxtMM_KeyPress(KeyAscii As Integer)
If IsAllowed(KeyAscii) = True Then          ' same concept
    TxtMM.Text = Chr(KeyAscii)
    TxtMM.Text = UCase(TxtMM.Text)
    Main.KeyMm = TxtMM.Text
End If
End Sub

Private Sub TxtRSM_KeyPress(KeyAscii As Integer)
If IsAllowed(KeyAscii) = True Then
    TxtRSM.Text = Chr(KeyAscii)
    TxtRSM.Text = UCase(TxtRSM.Text)
    Main.KeyRm = TxtRSM.Text
End If
End Sub

Private Sub TxtLSM_LostFocus()
If TxtLSM = "" Then                         ' if nothing written, then make them correct
    MsgBox "Error! No Input"
    TxtLSM.SetFocus
End If
End Sub

Private Sub TxtMM_LostFocus()
If TxtMM = "" Then
    MsgBox "Error! No Input"
    TxtMM.SetFocus
End If
End Sub

Private Sub TxtRSM_LostFocus()
If TxtRSM = "" Then
    MsgBox "Error! No Input"
    TxtRSM.SetFocus
End If
End Sub

Private Sub CheckError()                    ' checks error
Error1 = False
If Main.KeyLm = Main.KeyMm Or Main.KeyLm = Main.KeyRm Or Main.KeyMm = Main.KeyRm Then
    MsgBox "Error! Conflicts with controls!"
    Error1 = True
ElseIf Main.KeyLm = "" Then
    MsgBox "Error! No input"
    TxtLSM.SetFocus
    Error1 = True
ElseIf Main.KeyMm = "" Then
    MsgBox "Error! No input"
    TxtMM.SetFocus
    Error1 = True
ElseIf Main.KeyRm = "" Then
    MsgBox "Error! No input"
    TxtRSM.SetFocus
    Error1 = True
End If
End Sub

Public Function IsAllowed(AsciiN As Integer) As Boolean     ' function to see if it's a letter
IsAllowed = False
If 123 > AsciiN And AsciiN > 96 Or AsciiN > 64 And AsciiN < 91 Then IsAllowed = True
End Function
