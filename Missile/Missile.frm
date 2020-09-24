VERSION 5.00
Begin VB.Form FrmNew 
   BackColor       =   &H00000000&
   BorderStyle     =   1  'Fixed Single
   Caption         =   "New Game"
   ClientHeight    =   1905
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   5190
   ControlBox      =   0   'False
   BeginProperty Font 
      Name            =   "Comic Sans MS"
      Size            =   8.25
      Charset         =   0
      Weight          =   400
      Underline       =   0   'False
      Italic          =   0   'False
      Strikethrough   =   0   'False
   EndProperty
   Icon            =   "Missile.frx":0000
   LinkTopic       =   "Form2"
   LockControls    =   -1  'True
   MaxButton       =   0   'False
   MinButton       =   0   'False
   Moveable        =   0   'False
   ScaleHeight     =   1905
   ScaleWidth      =   5190
   StartUpPosition =   2  'CenterScreen
   Begin VB.CheckBox ChSkip 
      BackColor       =   &H00000000&
      Caption         =   "Skip Introduction missions"
      ForeColor       =   &H000000FF&
      Height          =   345
      Left            =   120
      TabIndex        =   8
      ToolTipText     =   "skips mission 1, 2, and 3"
      Top             =   840
      Value           =   1  'Checked
      Width           =   2535
   End
   Begin VB.CommandButton CmdCancel 
      BackColor       =   &H00008000&
      Caption         =   "Abort! Abort!"
      BeginProperty Font 
         Name            =   "Impact"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   500
      Left            =   2760
      Style           =   1  'Graphical
      TabIndex        =   7
      ToolTipText     =   "Cancel"
      Top             =   1300
      Width           =   2295
   End
   Begin VB.Frame FrameDiff 
      BackColor       =   &H00000000&
      Caption         =   "Difficulty"
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
      Height          =   1095
      Left            =   2760
      TabIndex        =   3
      Top             =   120
      Width           =   2295
      Begin VB.OptionButton OptHard 
         BackColor       =   &H00000000&
         Caption         =   "Mission: Impossible"
         BeginProperty Font 
            Name            =   "Impact"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H0000FF00&
         Height          =   270
         Left            =   120
         TabIndex        =   6
         ToolTipText     =   "Hard mode, can you handle it? [20 FPS MAX]"
         Top             =   720
         Width           =   2055
      End
      Begin VB.OptionButton OptMed 
         BackColor       =   &H00000000&
         Caption         =   "Elite          [15 FPS MAX]"
         BeginProperty Font 
            Name            =   "Impact"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H0000FF00&
         Height          =   270
         Left            =   120
         TabIndex        =   5
         ToolTipText     =   "1337 = Elite ..."
         Top             =   480
         Width           =   1935
      End
      Begin VB.OptionButton OptEasy 
         BackColor       =   &H00000000&
         Caption         =   "Rookie   [10 FPS MAX]"
         BeginProperty Font 
            Name            =   "Impact"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H0000FF00&
         Height          =   270
         Left            =   120
         TabIndex        =   4
         ToolTipText     =   "SISSY!"
         Top             =   240
         Width           =   1935
      End
   End
   Begin VB.Frame FrameCallsign 
      BackColor       =   &H00000000&
      Caption         =   "CallSign"
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
      TabIndex        =   1
      Top             =   120
      Width           =   2535
      Begin VB.TextBox TxtName 
         Appearance      =   0  'Flat
         BackColor       =   &H00000000&
         BorderStyle     =   0  'None
         BeginProperty Font 
            Name            =   "Impact"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H0000FF00&
         Height          =   255
         Left            =   120
         MaxLength       =   16
         TabIndex        =   2
         ToolTipText     =   "Please INPUT Your I.D. Commander"
         Top             =   240
         Width           =   2295
      End
   End
   Begin VB.CommandButton CmdGo 
      BackColor       =   &H00008000&
      Caption         =   "Lock and Load"
      Default         =   -1  'True
      BeginProperty Font 
         Name            =   "Impact"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   600
      Left            =   120
      Style           =   1  'Graphical
      TabIndex        =   0
      ToolTipText     =   "Letsa GO"
      Top             =   1200
      Width           =   2535
   End
End
Attribute VB_Name = "FrmNew"
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

Private Sub CmdCancel_Click()
Unload Me
End Sub

Private Sub CmdGo_Click()
If Left(TxtName.Text, 1) = " " Or TxtName.Text = "" Then    ' the left(...) written so a player cannot have a name of all spaces, this also disables anyone who has a space at the front of their name
    MsgBox "Please Input Your Correct I.D. Commander"
    TxtName.SetFocus
Else
    Main.Cheat = False
    Main.Callsign = TxtName.Text
    If OptEasy.Value = True Then
        Main.LblDiff = "Difficulty: " & OptEasy.Caption
        GameSpeed = EasySpeed
        Main.DiffMode = 0
    ElseIf OptMed.Value = True Then
        Main.LblDiff = "Difficulty: " & OptMed.Caption
        GameSpeed = MedSpeed
        Main.DiffMode = 1
    ElseIf OptHard.Value = True Then
        Main.LblDiff = "Difficulty: " & OptHard.Caption
        GameSpeed = HardSpeed
        Main.DiffMode = 2
    End If

    If Left(TxtName.Text, 10) = "GAMESPEED " And _
        IsNumeric(Right(TxtName.Text, 3)) = True Then       ' change gamespeed
        GameSpeed = Right(TxtName.Text, 3)
        Main.Callsign = "Speed Changed"
    ElseIf Left(TxtName.Text, 12) = "I AM A LOSAR" Then     ' getting 99 missiles
        Main.Cheat = True
        Main.CheatLevel = -1
        Main.Callsign = "LOOOOOSAR PLAYING"
    ElseIf Left(TxtName.Text, 14) = "LOSAR PLAYING " And _
        IsNumeric(Right(TxtName.Text, 2)) = True Then       ' choosing levels
        If Right(TxtName.Text, 2) > 0 And Right(TxtName.Text, 2) < 22 Then
            Main.Cheat = True
            Main.CheatLevel = Right(TxtName.Text, 2) - 1
        End If
    End If
    ' write setting to file
    On Error Resume Next
    Open App.Path + "\misc\settings.txt" For Output As #1
    Print #1, TxtName.Text
    If OptHard.Value = True Then
        Print #1, "2"
    ElseIf OptMed.Value = True Then
        Print #1, "1"
    ElseIf OptEasy.Value = True Then
        Print #1, "0"
    End If
    If ChSkip.Value = 0 Then
        Print #1, "0"
    Else
        Print #1, "1"
    End If
    Close #1
    
    ' start game
    Main.MnuClose.Enabled = True                            ' when game starts, close menu will be enabled
    Main.MnuNew1.Enabled = False                            ' when game starts, player must close game before playing a new one, thats the way the game plays!
    Main.Score = 0
    Main.LevelNum = 0
    Main.ExtraCity = 7000
    Main.MinRCNum = 7000
    Unload Me
    StartAnimatedCursor (App.Path + "\graphics\cursor\normal.ani")

    Main.Briefings (0)             ' saying the opening sequence is briefing mode       ' start briefing
End If

End Sub

Private Sub Form_Load()

CmdGo.Refresh
CmdCancel.Refresh
CmdGo.Visible = True
CmdGo.Caption = CmdGo.Caption & ""
Me.Refresh
CmdGo.ZOrder (0)
DoEvents

On Error GoTo ResetVar     ' if an error occurs when reading config.txt, then make a new config.txt
Dim GetSetting As String           ' open files, config keys, load from file config.txt

Open App.Path + "\Misc\settings.txt" For Input As #1
Line Input #1, GetSetting               ' 1st line is name
    Main.Callsign = GetSetting
Input #1, GetSetting                '2nd line is difficulty
    Main.DiffMode = GetSetting
Input #1, GetSetting                '3rd line is skip intro
    ChSkip.Value = GetSetting
Close #1

TxtName.Text = Main.Callsign
If Main.DiffMode = 2 Then OptHard.Value = True
If Main.DiffMode = 1 Then OptMed.Value = True
If Main.DiffMode = 0 Then OptEasy.Value = True

Exit Sub                        ' exit sub, dont reset file

ResetVar:                  ' if an error occurred, then it will come here,
Main.Callsign = "Defiant"
TxtName.Text = Main.Callsign
OptMed.Value = True
ChSkip.Value = 1
End Sub

Private Sub Form_Unload(Cancel As Integer)
    Main.Enabled = True
    Load Main
    Main.Show
End Sub
