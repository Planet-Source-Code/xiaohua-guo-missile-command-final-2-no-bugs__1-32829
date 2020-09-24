VERSION 5.00
Begin VB.Form FrmAbout 
   BackColor       =   &H00000000&
   BorderStyle     =   1  'Fixed Single
   Caption         =   "About me?"
   ClientHeight    =   3225
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   10335
   Icon            =   "FrmAbout.frx":0000
   LinkTopic       =   "Form1"
   LockControls    =   -1  'True
   MaxButton       =   0   'False
   MinButton       =   0   'False
   Moveable        =   0   'False
   ScaleHeight     =   3225
   ScaleWidth      =   10335
   StartUpPosition =   2  'CenterScreen
   Begin VB.Timer Timer1 
      Left            =   8040
      Top             =   2280
   End
   Begin VB.CommandButton CmdSys 
      BackColor       =   &H00008000&
      Caption         =   "System Requirements"
      Height          =   375
      Left            =   3000
      MaskColor       =   &H000000C0&
      Style           =   1  'Graphical
      TabIndex        =   5
      ToolTipText     =   "Is your system good enough for my game?"
      Top             =   2760
      UseMaskColor    =   -1  'True
      Width           =   1815
   End
   Begin VB.CommandButton CmdOK 
      BackColor       =   &H00008000&
      Caption         =   "OK"
      Height          =   375
      Left            =   120
      MaskColor       =   &H000000C0&
      Style           =   1  'Graphical
      TabIndex        =   4
      ToolTipText     =   "had enough?"
      Top             =   2760
      UseMaskColor    =   -1  'True
      Width           =   1335
   End
   Begin VB.CommandButton CmdCredit 
      Appearance      =   0  'Flat
      BackColor       =   &H00008000&
      Caption         =   "Credits"
      Default         =   -1  'True
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   1560
      MaskColor       =   &H000000C0&
      Style           =   1  'Graphical
      TabIndex        =   3
      ToolTipText     =   "Credits are Important! I order you to read"
      Top             =   2760
      UseMaskColor    =   -1  'True
      Width           =   1335
   End
   Begin VB.TextBox TxtAbout 
      Appearance      =   0  'Flat
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
      Height          =   2535
      Left            =   120
      Locked          =   -1  'True
      MultiLine       =   -1  'True
      ScrollBars      =   2  'Vertical
      TabIndex        =   1
      ToolTipText     =   "You heard me! Jeff K must die! If you don't know who Jeff K. is, just think of him as a moron wannabe"
      Top             =   120
      Width           =   5775
   End
   Begin VB.Image GIFHomer 
      Appearance      =   0  'Flat
      Height          =   2415
      Left            =   6000
      ToolTipText     =   "Don't double click me! I'm warning you... if you do i'll never go back!"
      Top             =   120
      Width           =   1575
   End
   Begin VB.Image ImX 
      Height          =   2055
      Left            =   8160
      ToolTipText     =   "You don't know me. I don't know you! keep it that way!"
      Top             =   120
      Width           =   1935
   End
   Begin VB.Label LblVersion 
      Appearance      =   0  'Flat
      AutoSize        =   -1  'True
      BackColor       =   &H80000005&
      BackStyle       =   0  'Transparent
      Caption         =   "Version: 2.0 Final"
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
      Left            =   8880
      TabIndex        =   2
      ToolTipText     =   "This will never END!"
      Top             =   2520
      Width           =   1350
   End
   Begin VB.Label LblAbout 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Missile Command SE super duper II ++ greatest by Mr. X    ©® 2001"
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
      Left            =   5040
      TabIndex        =   0
      ToolTipText     =   "One of those circles mean copyright, what the heck does the other one mean?"
      Top             =   2880
      Width           =   5205
   End
End
Attribute VB_Name = "FrmAbout"
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
Dim Homerpath As String
Dim Counter As Integer
Dim CounterReset As Integer

Public Sub CmdCredit_Click()                ' if credits clicked, then display credits
MsgBox "I'd like to thank: " & vbNewLine & "Siyan Tan for all his  cd-roms, without those CD's i couldn't have finished this, or start this project. " & vbNewLine & _
"Doug Puckett for his demo of sprite animation using bitblt, couldn't have understood it with out it, thank again! " & vbCrLf & _
"Microsoft for developing Visual Basic and C++ and DirectX 8.0 SDK" & vbNewLine & _
"MSDN for being helpful, partially. Partially annoying for giving the wrong answers like not listing constands GRRR" & vbNewLine & "My compaq for working without crashing so much" & _
vbNewLine & "All the VB websites for all the free and helpful codes that i learned from" & vbNewLine & _
"Ilja Tchijkov for letting me know about the sleep function, i saw it in several programs but never realised how usful it was" & vbCrLf & _
"Harlan Playford for trying to help me with this project because of my busy schedual for this month, couldn't have finished physics without you!" & _
vbCrLf & "Mr. Green for some very helpful notes " & vbCrLf & "Ang Lee, for such a great movie :)" & _
vbNewLine & "And too all those people I've forgot to mention, don't be offended if i forgot your name, I have alzheimers and amnesia", vbInformation, "Credits"
End Sub

Private Sub CmdOK_Click()                   ' unload if clicked ok
Unload Me
End Sub

Private Sub CmdSys_Click()                  ' system specs
MsgBox "At least a 300 mhz computer, if you have a higher proccessor, it will animate faster however, I don't think there will " & _
    "don't think there will be a difference between a 400mhz and 1ghz because i'm using ticks for game loop" & vbCrLf & _
    "Win98 at least, i don't know about other systems... wanna be a beta tester?" & vbCrLf & _
    "At least a mouse" & vbCrLf & _
    "Al least a computer", vbInformation, "System Requirements"
End Sub

Private Sub Form_Load()                     ' just some fun stuff, no need to explain
TxtAbout.Text = "Name: Defiant" & vbCrLf & "Real Name: Xiaohua Guo" & vbCrLf & _
                "A.K.A.: Mr. X" & vbCrLf & "Mr. X = Homer" & vbCrLf & _
                "D.O.B: Classified! You will have to ""disappear"" if you knew" & vbCrLf & _
                "P.O.B: Long time ago, in a galaxy far far away" & vbCrLf & "Time of Death: - 120345 days and counting" & vbCrLf & _
                "Worships: Unreal Tournament, Command and Conquer, my 300mhz Compaq" & vbCrLf & _
                "Wants dead: Matt Munn, Luke, Gene, Jeff K., all kinds of mons such as pokemon and digimon" & vbCrLf & _
                "Ph33R M¥ 1337 H4X0r1n9  $|<i11z" & vbCrLf & "if you would like to comment on my game or report a bug, not bloody likely, " & _
                "email me at xiaohuaguo@hotmail.com"
GIFHomer.Visible = True
Homerpath = "\misc\ahomer"
Counter = 0
CounterReset = 1
Timer1.Enabled = True
Timer1.Interval = 1000
ImX.Picture = LoadPicture(App.Path + "\misc\mrx.gif")
PlayGif
End Sub

Private Sub Form_Unload(Cancel As Integer)
Main.Enabled = True                         ' enable the rest
Timer1.Enabled = False
Main.Show
Unload FrmAbout                             ' unload
End Sub

Private Sub PlayGif()
GIFHomer.Picture = LoadPicture(App.Path & Homerpath & Counter & ".gif")

End Sub

Private Sub GIFHomer_DblClick()             ' if double clicked on homer, then display this
Homerpath = "\misc\homer3d"
Timer1.Interval = 100
Counter = 0
CounterReset = 3
GIFHomer.ToolTipText = "I told you not to click it! Die! Now you cant change me back! oh wait, unloading forms will! DOH!"
PlayGif
End Sub

Private Sub Timer1_Timer()
PlayGif
If Counter >= CounterReset Then
    Counter = 0
Else
    Counter = Counter + 1
End If
End Sub
