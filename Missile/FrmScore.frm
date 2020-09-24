VERSION 5.00
Begin VB.Form FrmScore 
   BackColor       =   &H00000000&
   BorderStyle     =   1  'Fixed Single
   Caption         =   "High Scores"
   ClientHeight    =   5775
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   4140
   Icon            =   "FrmScore.frx":0000
   LinkTopic       =   "Form1"
   LockControls    =   -1  'True
   MaxButton       =   0   'False
   MinButton       =   0   'False
   Moveable        =   0   'False
   ScaleHeight     =   5775
   ScaleWidth      =   4140
   StartUpPosition =   2  'CenterScreen
   Begin VB.TextBox TxtS 
      Alignment       =   1  'Right Justify
      Appearance      =   0  'Flat
      BackColor       =   &H00000000&
      BorderStyle     =   0  'None
      BeginProperty Font 
         Name            =   "Courier New"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000FF00&
      Height          =   285
      Index           =   10
      Left            =   2760
      Locked          =   -1  'True
      TabIndex        =   20
      Top             =   4680
      Width           =   1215
   End
   Begin VB.TextBox TxtS 
      Alignment       =   1  'Right Justify
      Appearance      =   0  'Flat
      BackColor       =   &H00000000&
      BorderStyle     =   0  'None
      BeginProperty Font 
         Name            =   "Courier New"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000FF00&
      Height          =   285
      Index           =   9
      Left            =   2760
      Locked          =   -1  'True
      TabIndex        =   19
      Top             =   4200
      Width           =   1215
   End
   Begin VB.TextBox TxtS 
      Alignment       =   1  'Right Justify
      Appearance      =   0  'Flat
      BackColor       =   &H00000000&
      BorderStyle     =   0  'None
      BeginProperty Font 
         Name            =   "Courier New"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000FF00&
      Height          =   285
      Index           =   8
      Left            =   2760
      Locked          =   -1  'True
      TabIndex        =   18
      Top             =   3720
      Width           =   1215
   End
   Begin VB.TextBox TxtS 
      Alignment       =   1  'Right Justify
      Appearance      =   0  'Flat
      BackColor       =   &H00000000&
      BorderStyle     =   0  'None
      BeginProperty Font 
         Name            =   "Courier New"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000FF00&
      Height          =   285
      Index           =   7
      Left            =   2760
      Locked          =   -1  'True
      TabIndex        =   17
      Top             =   3240
      Width           =   1215
   End
   Begin VB.TextBox TxtS 
      Alignment       =   1  'Right Justify
      Appearance      =   0  'Flat
      BackColor       =   &H00000000&
      BorderStyle     =   0  'None
      BeginProperty Font 
         Name            =   "Courier New"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000FF00&
      Height          =   285
      Index           =   6
      Left            =   2760
      Locked          =   -1  'True
      TabIndex        =   16
      Top             =   2760
      Width           =   1215
   End
   Begin VB.TextBox TxtS 
      Alignment       =   1  'Right Justify
      Appearance      =   0  'Flat
      BackColor       =   &H00000000&
      BorderStyle     =   0  'None
      BeginProperty Font 
         Name            =   "Courier New"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000FF00&
      Height          =   285
      Index           =   5
      Left            =   2760
      Locked          =   -1  'True
      TabIndex        =   15
      Top             =   2280
      Width           =   1215
   End
   Begin VB.TextBox TxtS 
      Alignment       =   1  'Right Justify
      Appearance      =   0  'Flat
      BackColor       =   &H00000000&
      BorderStyle     =   0  'None
      BeginProperty Font 
         Name            =   "Courier New"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000FF00&
      Height          =   285
      Index           =   4
      Left            =   2760
      Locked          =   -1  'True
      TabIndex        =   14
      Top             =   1800
      Width           =   1215
   End
   Begin VB.TextBox TxtS 
      Alignment       =   1  'Right Justify
      Appearance      =   0  'Flat
      BackColor       =   &H00000000&
      BorderStyle     =   0  'None
      BeginProperty Font 
         Name            =   "Courier New"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000FF00&
      Height          =   285
      Index           =   3
      Left            =   2760
      Locked          =   -1  'True
      TabIndex        =   13
      Top             =   1320
      Width           =   1215
   End
   Begin VB.TextBox TxtS 
      Alignment       =   1  'Right Justify
      Appearance      =   0  'Flat
      BackColor       =   &H00000000&
      BorderStyle     =   0  'None
      BeginProperty Font 
         Name            =   "Courier New"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000FF00&
      Height          =   285
      Index           =   2
      Left            =   2760
      Locked          =   -1  'True
      TabIndex        =   12
      Top             =   840
      Width           =   1215
   End
   Begin VB.TextBox TxtS 
      Alignment       =   1  'Right Justify
      Appearance      =   0  'Flat
      BackColor       =   &H00000000&
      BorderStyle     =   0  'None
      BeginProperty Font 
         Name            =   "Courier New"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000FF00&
      Height          =   285
      Index           =   1
      Left            =   2760
      Locked          =   -1  'True
      TabIndex        =   11
      Top             =   360
      Width           =   1215
   End
   Begin VB.CommandButton CmdOK 
      Appearance      =   0  'Flat
      BackColor       =   &H00008000&
      Caption         =   "OK"
      Default         =   -1  'True
      BeginProperty Font 
         Name            =   "Courier New"
         Size            =   14.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   1380
      MaskColor       =   &H000000FF&
      Style           =   1  'Graphical
      TabIndex        =   10
      Top             =   5160
      UseMaskColor    =   -1  'True
      Width           =   1215
   End
   Begin VB.TextBox TxtN 
      Appearance      =   0  'Flat
      BackColor       =   &H00000000&
      BorderStyle     =   0  'None
      BeginProperty Font 
         Name            =   "Courier New"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000FF00&
      Height          =   285
      Index           =   10
      Left            =   720
      Locked          =   -1  'True
      TabIndex        =   9
      Top             =   4680
      Width           =   2055
   End
   Begin VB.TextBox TxtN 
      Appearance      =   0  'Flat
      BackColor       =   &H00000000&
      BorderStyle     =   0  'None
      BeginProperty Font 
         Name            =   "Courier New"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000FF00&
      Height          =   285
      Index           =   9
      Left            =   720
      Locked          =   -1  'True
      TabIndex        =   8
      Top             =   4200
      Width           =   2055
   End
   Begin VB.TextBox TxtN 
      Appearance      =   0  'Flat
      BackColor       =   &H00000000&
      BorderStyle     =   0  'None
      BeginProperty Font 
         Name            =   "Courier New"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000FF00&
      Height          =   285
      Index           =   8
      Left            =   720
      Locked          =   -1  'True
      TabIndex        =   7
      Top             =   3720
      Width           =   2055
   End
   Begin VB.TextBox TxtN 
      Appearance      =   0  'Flat
      BackColor       =   &H00000000&
      BorderStyle     =   0  'None
      BeginProperty Font 
         Name            =   "Courier New"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000FF00&
      Height          =   285
      Index           =   7
      Left            =   720
      Locked          =   -1  'True
      TabIndex        =   6
      Top             =   3240
      Width           =   2055
   End
   Begin VB.TextBox TxtN 
      Appearance      =   0  'Flat
      BackColor       =   &H00000000&
      BorderStyle     =   0  'None
      BeginProperty Font 
         Name            =   "Courier New"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000FF00&
      Height          =   285
      Index           =   6
      Left            =   720
      Locked          =   -1  'True
      TabIndex        =   5
      Top             =   2760
      Width           =   2055
   End
   Begin VB.TextBox TxtN 
      Appearance      =   0  'Flat
      BackColor       =   &H00000000&
      BorderStyle     =   0  'None
      BeginProperty Font 
         Name            =   "Courier New"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000FF00&
      Height          =   285
      Index           =   5
      Left            =   720
      Locked          =   -1  'True
      TabIndex        =   4
      Top             =   2280
      Width           =   2055
   End
   Begin VB.TextBox TxtN 
      Appearance      =   0  'Flat
      BackColor       =   &H00000000&
      BorderStyle     =   0  'None
      BeginProperty Font 
         Name            =   "Courier New"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000FF00&
      Height          =   285
      Index           =   4
      Left            =   720
      Locked          =   -1  'True
      TabIndex        =   3
      Top             =   1800
      Width           =   2055
   End
   Begin VB.TextBox TxtN 
      Appearance      =   0  'Flat
      BackColor       =   &H00000000&
      BorderStyle     =   0  'None
      BeginProperty Font 
         Name            =   "Courier New"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000FF00&
      Height          =   285
      Index           =   3
      Left            =   720
      Locked          =   -1  'True
      TabIndex        =   2
      Top             =   1320
      Width           =   2055
   End
   Begin VB.TextBox TxtN 
      Appearance      =   0  'Flat
      BackColor       =   &H00000000&
      BorderStyle     =   0  'None
      BeginProperty Font 
         Name            =   "Courier New"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000FF00&
      Height          =   285
      Index           =   2
      Left            =   720
      Locked          =   -1  'True
      TabIndex        =   1
      Top             =   840
      Width           =   2055
   End
   Begin VB.TextBox TxtN 
      Appearance      =   0  'Flat
      BackColor       =   &H00000000&
      BorderStyle     =   0  'None
      BeginProperty Font 
         Name            =   "Courier New"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000FF00&
      Height          =   285
      Index           =   1
      Left            =   720
      Locked          =   -1  'True
      TabIndex        =   0
      Text            =   "1234567890123456"
      Top             =   360
      Width           =   2055
   End
   Begin VB.Label LblCall 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Callsign"
      BeginProperty Font 
         Name            =   "Courier New"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000C000&
      Height          =   240
      Left            =   720
      TabIndex        =   31
      Top             =   120
      Width           =   960
   End
   Begin VB.Label LblScore 
      Alignment       =   1  'Right Justify
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Score"
      BeginProperty Font 
         Name            =   "Courier New"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000C000&
      Height          =   240
      Left            =   3375
      TabIndex        =   32
      Top             =   120
      Width           =   600
   End
   Begin VB.Label Lblth 
      Appearance      =   0  'Flat
      AutoSize        =   -1  'True
      BackColor       =   &H80000005&
      BackStyle       =   0  'Transparent
      Caption         =   "10th"
      BeginProperty Font 
         Name            =   "Courier New"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000C000&
      Height          =   240
      Index           =   10
      Left            =   120
      TabIndex        =   30
      Top             =   4680
      Width           =   480
   End
   Begin VB.Label Lblth 
      Appearance      =   0  'Flat
      AutoSize        =   -1  'True
      BackColor       =   &H80000005&
      BackStyle       =   0  'Transparent
      Caption         =   " 9th"
      BeginProperty Font 
         Name            =   "Courier New"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000C000&
      Height          =   240
      Index           =   9
      Left            =   120
      TabIndex        =   29
      Top             =   4200
      Width           =   480
   End
   Begin VB.Label Lblth 
      Appearance      =   0  'Flat
      AutoSize        =   -1  'True
      BackColor       =   &H80000005&
      BackStyle       =   0  'Transparent
      Caption         =   " 8th"
      BeginProperty Font 
         Name            =   "Courier New"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000C000&
      Height          =   240
      Index           =   8
      Left            =   120
      TabIndex        =   28
      Top             =   3720
      Width           =   480
   End
   Begin VB.Label Lblth 
      Appearance      =   0  'Flat
      AutoSize        =   -1  'True
      BackColor       =   &H80000005&
      BackStyle       =   0  'Transparent
      Caption         =   " 7th"
      BeginProperty Font 
         Name            =   "Courier New"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000C000&
      Height          =   240
      Index           =   7
      Left            =   120
      TabIndex        =   27
      Top             =   3240
      Width           =   480
   End
   Begin VB.Label Lblth 
      Appearance      =   0  'Flat
      AutoSize        =   -1  'True
      BackColor       =   &H80000005&
      BackStyle       =   0  'Transparent
      Caption         =   " 6th"
      BeginProperty Font 
         Name            =   "Courier New"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000C000&
      Height          =   240
      Index           =   6
      Left            =   120
      TabIndex        =   26
      Top             =   2760
      Width           =   480
   End
   Begin VB.Label Lblth 
      Appearance      =   0  'Flat
      AutoSize        =   -1  'True
      BackColor       =   &H80000005&
      BackStyle       =   0  'Transparent
      Caption         =   " 5th"
      BeginProperty Font 
         Name            =   "Courier New"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000C000&
      Height          =   240
      Index           =   5
      Left            =   120
      TabIndex        =   25
      Top             =   2280
      Width           =   480
   End
   Begin VB.Label Lblth 
      Appearance      =   0  'Flat
      AutoSize        =   -1  'True
      BackColor       =   &H80000005&
      BackStyle       =   0  'Transparent
      Caption         =   " 4th"
      BeginProperty Font 
         Name            =   "Courier New"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000C000&
      Height          =   240
      Index           =   4
      Left            =   120
      TabIndex        =   24
      Top             =   1800
      Width           =   480
   End
   Begin VB.Label Lblth 
      Appearance      =   0  'Flat
      AutoSize        =   -1  'True
      BackColor       =   &H80000005&
      BackStyle       =   0  'Transparent
      Caption         =   " 3rd"
      BeginProperty Font 
         Name            =   "Courier New"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000C000&
      Height          =   240
      Index           =   3
      Left            =   120
      TabIndex        =   23
      Top             =   1320
      Width           =   480
   End
   Begin VB.Label Lblth 
      Appearance      =   0  'Flat
      AutoSize        =   -1  'True
      BackColor       =   &H80000005&
      BackStyle       =   0  'Transparent
      Caption         =   " 2nd"
      BeginProperty Font 
         Name            =   "Courier New"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000C000&
      Height          =   240
      Index           =   2
      Left            =   120
      TabIndex        =   22
      Top             =   840
      Width           =   480
   End
   Begin VB.Label Lblth 
      Appearance      =   0  'Flat
      AutoSize        =   -1  'True
      BackColor       =   &H80000005&
      BackStyle       =   0  'Transparent
      Caption         =   " 1st"
      BeginProperty Font 
         Name            =   "Courier New"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000C000&
      Height          =   240
      Index           =   1
      Left            =   120
      TabIndex        =   21
      Top             =   360
      Width           =   480
   End
End
Attribute VB_Name = "FrmScore"
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

Dim HighScore As String
Dim CountingN As Integer
Dim CountingS As Integer

Public Sub Form_Load()
Open App.Path + "\misc\config.txt" For Input As #1
Input #1, HighScore                                         ' skip the "DO NOT modify this file"
Input #1, HighScore                                         ' skip the fire left missile line
Input #1, HighScore                                         ' skip middile bank fire missile line
Input #1, HighScore                                         ' skip right fire missile line
Input #1, HighScore                                         ' skip mode line
On Error GoTo MakeNewScoreFile                              ' if error occurs when reading, then make new score file
For CountingN = 1 To 10                                     ' read names
    Line Input #1, HighScore
    TxtN(CountingN).Text = HighScore                        ' output to txtbox
Next CountingN

For CountingS = 1 To 10                                     ' read score
    Line Input #1, HighScore                                ' output to txtbox
    TxtS(CountingS) = HighScore
Next CountingS
Close #1
Exit Sub

MakeNewScoreFile:
NewScore                                                    ' make new score file
Form_Load                                                   ' load form again to display original scores
End Sub

Private Sub Form_Unload(Cancel As Integer)                  ' unload this and enable main
Main.Enabled = True
Main.Show
End Sub

Private Sub CmdOK_Click()                                   ' unload if clicked
Unload FrmScore
End Sub
