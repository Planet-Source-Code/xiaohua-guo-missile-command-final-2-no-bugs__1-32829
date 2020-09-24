VERSION 5.00
Begin VB.Form Main 
   BackColor       =   &H00E0E0E0&
   BorderStyle     =   0  'None
   Caption         =   "Missile Command By Xiaohua Guo"
   ClientHeight    =   10860
   ClientLeft      =   150
   ClientTop       =   435
   ClientWidth     =   15270
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
   Icon            =   "Main.frx":0000
   LinkTopic       =   "Form1"
   LockControls    =   -1  'True
   MaxButton       =   0   'False
   MinButton       =   0   'False
   MousePointer    =   99  'Custom
   Moveable        =   0   'False
   ScaleHeight     =   10860
   ScaleWidth      =   15270
   StartUpPosition =   2  'CenterScreen
   WindowState     =   2  'Maximized
   Begin VB.PictureBox PicBottom 
      Appearance      =   0  'Flat
      AutoSize        =   -1  'True
      BackColor       =   &H80000005&
      BorderStyle     =   0  'None
      ForeColor       =   &H80000008&
      Height          =   9750
      Left            =   0
      ScaleHeight     =   9750
      ScaleWidth      =   15360
      TabIndex        =   14
      Top             =   10440
      Width           =   15360
      Begin VB.PictureBox PicStat 
         BackColor       =   &H80000000&
         BorderStyle     =   0  'None
         Height          =   3795
         Left            =   9960
         Picture         =   "Main.frx":030A
         ScaleHeight     =   253
         ScaleMode       =   3  'Pixel
         ScaleWidth      =   360
         TabIndex        =   16
         Top             =   2520
         Width           =   5400
         Begin VB.Label LblStat2 
            Alignment       =   1  'Right Justify
            BackColor       =   &H00000000&
            BackStyle       =   0  'Transparent
            Caption         =   "0"
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
            Left            =   600
            TabIndex        =   20
            Top             =   3240
            Width           =   1095
         End
         Begin VB.Label LblStat1 
            Alignment       =   1  'Right Justify
            BackColor       =   &H00000000&
            BackStyle       =   0  'Transparent
            Caption         =   "0"
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
            Left            =   600
            TabIndex        =   19
            Top             =   3000
            Width           =   1095
         End
         Begin VB.Label LblRand1 
            BackColor       =   &H00000000&
            BackStyle       =   0  'Transparent
            Caption         =   ".00000000"
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
            Left            =   1680
            TabIndex        =   18
            Top             =   3000
            Width           =   1095
         End
         Begin VB.Label LblRand2 
            BackColor       =   &H00000000&
            BackStyle       =   0  'Transparent
            Caption         =   ".00000000"
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
            Left            =   1680
            TabIndex        =   17
            Top             =   3240
            Width           =   1095
         End
      End
      Begin VB.PictureBox PicRemainCM 
         Appearance      =   0  'Flat
         BackColor       =   &H00800000&
         BorderStyle     =   0  'None
         ForeColor       =   &H80000008&
         Height          =   6000
         Left            =   0
         Picture         =   "Main.frx":64EB
         ScaleHeight     =   6000
         ScaleWidth      =   9600
         TabIndex        =   15
         Top             =   1440
         Width           =   9600
         Begin VB.Label LblAnyKey 
            Alignment       =   2  'Center
            Appearance      =   0  'Flat
            BackColor       =   &H00008000&
            Caption         =   "PRESS ANY KEY TO CLOSE"
            BeginProperty Font 
               Name            =   "Impact"
               Size            =   15.75
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00800000&
            Height          =   390
            Left            =   3120
            TabIndex        =   33
            Top             =   480
            Width           =   3495
         End
         Begin VB.Label LblRemainCity 
            Appearance      =   0  'Flat
            BackColor       =   &H80000005&
            BackStyle       =   0  'Transparent
            Caption         =   "Cities:"
            BeginProperty Font 
               Name            =   "Impact"
               Size            =   15.75
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H000000FF&
            Height          =   390
            Left            =   120
            TabIndex        =   28
            Top             =   2280
            Width           =   1335
         End
         Begin VB.Label LblMissionNum 
            Appearance      =   0  'Flat
            BackColor       =   &H80000005&
            BackStyle       =   0  'Transparent
            Caption         =   "Mission 00"
            BeginProperty Font 
               Name            =   "Impact"
               Size            =   15.75
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H0000C000&
            Height          =   495
            Left            =   8200
            TabIndex        =   27
            Top             =   2640
            Visible         =   0   'False
            Width           =   1455
         End
         Begin VB.Label LblBonusCityMsg 
            Appearance      =   0  'Flat
            AutoSize        =   -1  'True
            BackColor       =   &H80000005&
            BackStyle       =   0  'Transparent
            Caption         =   "+1 Bonus City!"
            BeginProperty Font 
               Name            =   "Impact"
               Size            =   14.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H0000C000&
            Height          =   345
            Left            =   3120
            TabIndex        =   26
            Top             =   5040
            Visible         =   0   'False
            Width           =   1860
         End
         Begin VB.Label LblRemainMN 
            Appearance      =   0  'Flat
            AutoSize        =   -1  'True
            BackColor       =   &H80000005&
            BackStyle       =   0  'Transparent
            Caption         =   "0"
            BeginProperty Font 
               Name            =   "Impact"
               Size            =   21.75
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H0000C000&
            Height          =   540
            Left            =   2280
            TabIndex        =   25
            Top             =   3000
            Visible         =   0   'False
            Width           =   270
         End
         Begin VB.Label LblX 
            Appearance      =   0  'Flat
            AutoSize        =   -1  'True
            BackColor       =   &H80000005&
            BackStyle       =   0  'Transparent
            Caption         =   "X"
            BeginProperty Font 
               Name            =   "Impact"
               Size            =   21.75
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H0000C000&
            Height          =   540
            Index           =   4
            Left            =   1920
            TabIndex        =   24
            Top             =   3000
            Visible         =   0   'False
            Width           =   240
         End
         Begin VB.Label LblDescrip 
            Appearance      =   0  'Flat
            BackColor       =   &H80000005&
            BackStyle       =   0  'Transparent
            Caption         =   "Mission Descriptions"
            ForeColor       =   &H0000FF00&
            Height          =   1215
            Left            =   120
            TabIndex        =   23
            Top             =   4800
            Width           =   9375
         End
         Begin VB.Label LblRemainMissile 
            Appearance      =   0  'Flat
            BackColor       =   &H80000005&
            BackStyle       =   0  'Transparent
            Caption         =   "Missiles:"
            BeginProperty Font 
               Name            =   "Impact"
               Size            =   15.75
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H000000FF&
            Height          =   390
            Left            =   120
            TabIndex        =   22
            Top             =   3000
            Width           =   1335
         End
         Begin VB.Image ImRemainMissile 
            Height          =   720
            Index           =   0
            Left            =   1560
            Top             =   2880
            Visible         =   0   'False
            Width           =   195
         End
         Begin VB.Image ImRemainCity 
            Height          =   495
            Index           =   0
            Left            =   1560
            Top             =   2280
            Width           =   495
         End
      End
   End
   Begin VB.PictureBox Picture1 
      Appearance      =   0  'Flat
      BackColor       =   &H00000000&
      ForeColor       =   &H80000008&
      Height          =   255
      Left            =   7320
      ScaleHeight     =   225
      ScaleWidth      =   615
      TabIndex        =   34
      Top             =   1200
      Width           =   650
      Begin VB.Label LblTRemain 
         Alignment       =   1  'Right Justify
         Appearance      =   0  'Flat
         BackColor       =   &H80000005&
         BackStyle       =   0  'Transparent
         Caption         =   "12345"
         BeginProperty Font 
            Name            =   "Courier New"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H000000FF&
         Height          =   255
         Left            =   0
         TabIndex        =   35
         Top             =   0
         Width           =   615
      End
   End
   Begin VB.PictureBox ProTRemaining 
      Appearance      =   0  'Flat
      BackColor       =   &H00800000&
      ForeColor       =   &H80000008&
      Height          =   135
      Left            =   360
      ScaleHeight     =   105
      ScaleWidth      =   14505
      TabIndex        =   36
      Top             =   1200
      Width           =   14535
   End
   Begin VB.Timer TimerMusic 
      Interval        =   250
      Left            =   6600
      Top             =   9000
   End
   Begin VB.Timer TimerError 
      Enabled         =   0   'False
      Interval        =   200
      Left            =   1920
      Top             =   9000
   End
   Begin VB.Timer TimerBonus 
      Enabled         =   0   'False
      Left            =   3840
      Top             =   9000
   End
   Begin VB.Timer TimerSplit 
      Enabled         =   0   'False
      Left            =   2400
      Top             =   9000
   End
   Begin VB.Timer TimerBomber 
      Enabled         =   0   'False
      Left            =   3360
      Top             =   9000
   End
   Begin VB.Timer TimerNewEM 
      Enabled         =   0   'False
      Interval        =   2000
      Left            =   2880
      Top             =   9000
   End
   Begin VB.PictureBox PicMain 
      AutoRedraw      =   -1  'True
      BackColor       =   &H00FF0000&
      BorderStyle     =   0  'None
      FillColor       =   &H8000000F&
      FillStyle       =   0  'Solid
      Height          =   7575
      Left            =   360
      ScaleHeight     =   505
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   969
      TabIndex        =   0
      Top             =   1320
      Width           =   14535
      Begin VB.Label LblStart 
         Alignment       =   2  'Center
         Appearance      =   0  'Flat
         AutoSize        =   -1  'True
         BackColor       =   &H80000008&
         BackStyle       =   0  'Transparent
         Caption         =   "2"
         BeginProperty Font 
            Name            =   "Impact"
            Size            =   42
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H000000C0&
         Height          =   1020
         Left            =   3960
         TabIndex        =   30
         Top             =   3000
         Visible         =   0   'False
         Width           =   6660
      End
   End
   Begin VB.Image GifTop 
      Appearance      =   0  'Flat
      Height          =   1200
      Left            =   0
      Picture         =   "Main.frx":18282
      Top             =   0
      Width           =   15360
   End
   Begin VB.Image PicSlider 
      Height          =   195
      Left            =   4700
      Picture         =   "Main.frx":25494
      Top             =   1012
      Width           =   6150
   End
   Begin VB.Label LblFPS 
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      BackStyle       =   0  'Transparent
      Caption         =   "FPS: 00"
      BeginProperty Font 
         Name            =   "Impact"
         Size            =   14.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000000C0&
      Height          =   375
      Left            =   4440
      TabIndex        =   32
      Top             =   9000
      Width           =   1695
   End
   Begin VB.Label LblPauseStat 
      Alignment       =   2  'Center
      AutoSize        =   -1  'True
      BackColor       =   &H80000012&
      BackStyle       =   0  'Transparent
      Caption         =   "Press Space to Pause Game"
      BeginProperty Font 
         Name            =   "Impact"
         Size            =   15.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0080FF80&
      Height          =   390
      Left            =   5805
      TabIndex        =   31
      Top             =   10080
      Width           =   4005
   End
   Begin VB.Image ImExtraCity 
      Height          =   495
      Left            =   13200
      Top             =   9840
      Width           =   495
   End
   Begin VB.Image ImRMN 
      Appearance      =   0  'Flat
      Height          =   705
      Index           =   0
      Left            =   12960
      Top             =   9000
      Width           =   135
   End
   Begin VB.Image ImRSpec 
      Height          =   375
      Left            =   12480
      Top             =   9120
      Width           =   375
   End
   Begin VB.Image ImMMN 
      Appearance      =   0  'Flat
      Height          =   705
      Index           =   0
      Left            =   7080
      Top             =   9000
      Width           =   135
   End
   Begin VB.Image ImMSpec 
      Height          =   375
      Left            =   6600
      Top             =   9120
      Width           =   375
   End
   Begin VB.Image ImLSpec 
      Height          =   375
      Left            =   480
      Top             =   9120
      Width           =   375
   End
   Begin VB.Image ImLMN 
      Appearance      =   0  'Flat
      Height          =   705
      Index           =   0
      Left            =   960
      Top             =   9000
      Width           =   135
   End
   Begin VB.Label LblError 
      Alignment       =   2  'Center
      BackColor       =   &H00FF0000&
      BackStyle       =   0  'Transparent
      Caption         =   "All Clear! SAMs Locked, UnArmed"
      BeginProperty Font 
         Name            =   "Impact"
         Size            =   15.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000000FF&
      Height          =   375
      Left            =   4800
      TabIndex        =   29
      Top             =   9720
      Visible         =   0   'False
      Width           =   6015
   End
   Begin VB.Image ImLslider 
      Appearance      =   0  'Flat
      Height          =   9225
      Left            =   0
      Picture         =   "Main.frx":25C03
      Top             =   1200
      Width           =   375
   End
   Begin VB.Image ImRslider 
      Appearance      =   0  'Flat
      Height          =   9225
      Left            =   14895
      Picture         =   "Main.frx":26E2D
      Top             =   1200
      Width           =   525
   End
   Begin VB.Label LblScoreText 
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      BackStyle       =   0  'Transparent
      Caption         =   "Score:"
      BeginProperty Font 
         Name            =   "Impact"
         Size            =   14.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000C000&
      Height          =   375
      Left            =   9600
      TabIndex        =   21
      Top             =   9000
      Width           =   855
   End
   Begin VB.Label LblCityResN 
      BackColor       =   &H00000000&
      BackStyle       =   0  'Transparent
      Caption         =   "0"
      BeginProperty Font 
         Name            =   "Impact"
         Size            =   21.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000C000&
      Height          =   495
      Left            =   14160
      TabIndex        =   12
      Top             =   9840
      Width           =   615
   End
   Begin VB.Label LblX 
      BackColor       =   &H00000000&
      BackStyle       =   0  'Transparent
      Caption         =   "X"
      BeginProperty Font 
         Name            =   "Impact"
         Size            =   21.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000C000&
      Height          =   495
      Index           =   3
      Left            =   13800
      TabIndex        =   11
      Top             =   9840
      Width           =   375
   End
   Begin VB.Label LblReserve 
      BackColor       =   &H80000012&
      BackStyle       =   0  'Transparent
      Caption         =   "Extra Cities:"
      BeginProperty Font 
         Name            =   "Impact"
         Size            =   15.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000C000&
      Height          =   375
      Left            =   11400
      TabIndex        =   10
      Top             =   9840
      Width           =   1815
   End
   Begin VB.Label LblX 
      Appearance      =   0  'Flat
      AutoSize        =   -1  'True
      BackColor       =   &H80000005&
      BackStyle       =   0  'Transparent
      Caption         =   "X"
      BeginProperty Font 
         Name            =   "Impact"
         Size            =   21.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000C000&
      Height          =   540
      Index           =   1
      Left            =   7320
      TabIndex        =   8
      Top             =   9120
      Visible         =   0   'False
      Width           =   240
   End
   Begin VB.Label LblMidN 
      Appearance      =   0  'Flat
      AutoSize        =   -1  'True
      BackColor       =   &H80000005&
      BackStyle       =   0  'Transparent
      Caption         =   "0"
      BeginProperty Font 
         Name            =   "Impact"
         Size            =   21.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000C000&
      Height          =   540
      Left            =   7680
      TabIndex        =   5
      Top             =   9120
      Visible         =   0   'False
      Width           =   270
   End
   Begin VB.Label LblX 
      Appearance      =   0  'Flat
      AutoSize        =   -1  'True
      BackColor       =   &H80000005&
      BackStyle       =   0  'Transparent
      Caption         =   "X"
      BeginProperty Font 
         Name            =   "Impact"
         Size            =   21.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000C000&
      Height          =   540
      Index           =   2
      Left            =   13200
      TabIndex        =   9
      Top             =   9120
      Visible         =   0   'False
      Width           =   240
   End
   Begin VB.Label LblX 
      Appearance      =   0  'Flat
      AutoSize        =   -1  'True
      BackColor       =   &H80000005&
      BackStyle       =   0  'Transparent
      Caption         =   "X"
      BeginProperty Font 
         Name            =   "Impact"
         Size            =   21.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000C000&
      Height          =   540
      Index           =   0
      Left            =   1200
      TabIndex        =   7
      Top             =   9120
      Visible         =   0   'False
      Width           =   240
   End
   Begin VB.Label LblRightN 
      Appearance      =   0  'Flat
      AutoSize        =   -1  'True
      BackColor       =   &H80000005&
      BackStyle       =   0  'Transparent
      Caption         =   "0"
      BeginProperty Font 
         Name            =   "Impact"
         Size            =   21.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000C000&
      Height          =   540
      Left            =   13560
      TabIndex        =   6
      Top             =   9120
      Visible         =   0   'False
      Width           =   270
   End
   Begin VB.Label LblLeftN 
      Appearance      =   0  'Flat
      AutoSize        =   -1  'True
      BackColor       =   &H80000005&
      BackStyle       =   0  'Transparent
      Caption         =   "0"
      BeginProperty Font 
         Name            =   "Impact"
         Size            =   21.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000C000&
      Height          =   540
      Left            =   1560
      TabIndex        =   4
      Top             =   9120
      Visible         =   0   'False
      Width           =   270
   End
   Begin VB.Label LblLevel 
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      BackStyle       =   0  'Transparent
      Caption         =   "Level: 00"
      BeginProperty Font 
         Name            =   "Impact"
         Size            =   14.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF8080&
      Height          =   375
      Left            =   4320
      TabIndex        =   3
      Top             =   10080
      Width           =   1095
   End
   Begin VB.Label LblCallsign 
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      BackStyle       =   0  'Transparent
      Caption         =   "Commander: 123456789012345"
      BeginProperty Font 
         Name            =   "Impact"
         Size            =   14.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000C000&
      Height          =   375
      Left            =   480
      TabIndex        =   2
      Top             =   9720
      Width           =   4575
   End
   Begin VB.Label LblScore 
      Alignment       =   1  'Right Justify
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      BackStyle       =   0  'Transparent
      Caption         =   "000000"
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   14.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000000FF&
      Height          =   375
      Left            =   10440
      TabIndex        =   1
      Top             =   9000
      Width           =   1215
   End
   Begin VB.Label LblDiff 
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      BackStyle       =   0  'Transparent
      Caption         =   "Difficulty: Mission Impossible"
      BeginProperty Font 
         Name            =   "Impact"
         Size            =   14.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0080FF80&
      Height          =   375
      Left            =   480
      TabIndex        =   13
      Top             =   10080
      Width           =   3615
   End
   Begin VB.Image ImBackB 
      Height          =   2250
      Left            =   360
      Picture         =   "Main.frx":2855E
      Top             =   8880
      Width           =   15000
   End
   Begin VB.Menu MnuGame 
      Caption         =   "&Game"
      Begin VB.Menu MnuNew1 
         Caption         =   "&New Game..."
         Shortcut        =   {F2}
      End
      Begin VB.Menu MnuClose 
         Caption         =   "&Close Game"
         Enabled         =   0   'False
         Shortcut        =   {F12}
      End
      Begin VB.Menu MnuSpace1 
         Caption         =   "-"
      End
      Begin VB.Menu MnuScore1 
         Caption         =   "&High Scores"
         Shortcut        =   {F3}
      End
      Begin VB.Menu MnuSpace2 
         Caption         =   "-"
      End
      Begin VB.Menu MnuExit1 
         Caption         =   "E&xit"
         Shortcut        =   ^X
      End
   End
   Begin VB.Menu MnuSetting1 
      Caption         =   "&Settings"
      Begin VB.Menu MnuSound1 
         Caption         =   "&Sound"
         Checked         =   -1  'True
         Shortcut        =   {F4}
      End
      Begin VB.Menu MnuMusic1 
         Caption         =   "&Music"
         Checked         =   -1  'True
         Shortcut        =   {F5}
      End
      Begin VB.Menu MnuSpace 
         Caption         =   "-"
         Index           =   2
      End
      Begin VB.Menu MnuConfig1 
         Caption         =   "&Control Config..."
         Shortcut        =   ^C
      End
   End
   Begin VB.Menu MnuHelp1 
      Caption         =   "&Help"
      Begin VB.Menu MnuHtopic1 
         Caption         =   "&Help Topic"
         Shortcut        =   {F1}
      End
      Begin VB.Menu MnuSpace3 
         Caption         =   "-"
      End
      Begin VB.Menu MnuAbout1 
         Caption         =   "&About"
         Shortcut        =   {F8}
      End
   End
End
Attribute VB_Name = "Main"
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
'*********** this form, Main, is called main instead of frmMain because i wanted it to be special, easy to identify from other forms, and i wanted it to be shorter for easier writing.

' game point system, all points should be multiples of 10, if changed, change Scorecount too
Const ScoreCount = 1            ' multiples of this number to count up the score (used to look neat, it just counts up or down the score really fast instead of just refreashing the new score value
Const PEm = 30                  ' points awarded for every enemy missile destroyed
Const PBomber = 160             ' points awarded for taking out a bomber
Const PBomb = 50                ' points awarded for taking out a bomb
Const PNuke = 250               ' points awarded for taking out a nuke
Const PCiv = 700                ' points taken off for hitting a civilian plane
Const PCity = 100               ' points awarded for extra city at end of round
Const PMissile = 20             ' points awarded for extra missiles after round
Public MinRCNum!      ' the minimum number to get a bonus city
Public ExtraCity!     ' increment of this value to get an extra (bonus) city

'****************************'
' missile movement variables '
'****************************'
Dim CurX%             ' a variable to carry the position of cursor to other procedures (x, Y are local to picmain's keydown and mousedown)
Dim CurY%             ' same concept as above
Dim MissileBankUse%   ' 0 = use left bank, 1 = middile, 2 = right
Dim MAngleDeg%        ' angle in degrees, NOT RADIANS, of missile angle
Dim LMM%              ' number of missiles on left bank, -1 = launcher destroyed
Dim MMM%              ' on middle bank, -1 = launcher destroyed
Dim RMM%              ' on right bank, -1 = launcher destroyed

'******************'
' missile specials '
'******************'
Dim LMspecType%       ' what does the left side have
Dim MMspecType%       ' what does middile side have
Dim RMspectype%       ' what does right side have

'********'
' cities '
'********'
Dim CityN%            ' number of cities on game screen (not including extra cities)
Dim CityReserve%      ' the number of bonus cities (extra cities)

'**********************'
' key config variables '
'**********************'
Dim Gotkey$            ' variable used to carry the key stoke from picmain's local KeyAscii to
Public KeyLm$          ' left missile bank key
Public KeyMm$          ' key to fire middle missile bank
Public KeyRm$          ' key to fire right missile bank
Public Controlmode$    ' the control mode "km" = keyboard with mouse, "ko" = keyboard only, "mo" = mouse only

'*************************'
' Split Missile Variables '
'*************************'
Dim SplitCount%       ' for counting number for splitting enemy missiles
Dim SplitNum%         ' split into how many new missiles
Dim SplitEMN%         ' split which on screen missile, used as an index for that enemy missile

'***************'
' Enemy Bombers '
'***************'
Public BType%         ' different types of bombers
Dim ExType%           ' rand between which explsion to use
Dim BomberAllowed%    ' allowed to show which bombers
Dim BMaxDropT%        ' the maximum time for the bomber to drop load
Dim BMinDropT%        ' the mininum time for bomber to drop load
Dim BomberMinType%        ' minimum type of bomber

'*******'
' bombs '
'*******'
Dim BombType%         ' randomized to load any of the 9 colourful bombs
Dim BombSpeed%        ' bomb speed may vary

'*******'
' Bonus '
'*******'
Public BonusType%     ' which type is it, 0 = + 100 P, 1 = + 200 P, 2 = +5 missiles, 3 = skull(-1000), 4 = + 10 missiles, 5 = instant missile, 6 = +5+5+5 missiles, 7 = 2 split, 8 = + 500, 9 = 3split
Dim BonusAllowed%     ' allowed bonuses on that level
Dim BonusTActive%     ' amount of "time" bonus will stay on screen
Dim BonusMinType%     ' minimum bonus type

'*****************'
' Game/level vars '
'*****************'
Public GamePlay%      ' -1= no current game, 0 = newgame, 1 = playing, 2 = paused, 3= almost done level, 4 = close level
Public LevelNum%      ' the level number
Public Score!         ' score of player
Public Callsign$                ' name of player
Public DiffMode As Single ' difficulty 0 = easy, 1 = med, 2 = hard.
Public Cheat As Boolean         ' cheat enable, 99 missiles
Public CheatLevel%    ' the skip level thing

'*******'
' other '
'*******'
Dim GameTcount As Integer
Dim TempCount As Integer
Dim PlayS$            ' play sound var, if var is empty, them the sound would play, if the var has values, it will give bad dir to sound file
Dim FlashN%           ' message flashes on screen # of times
Dim Ranking%          ' ranking
Dim TickNow As Single          ' how many ticks passed
Dim TickGot As Single          ' tick time saved
Dim TimerCount As Single    ' counts multiple of 100 (used for timer timer)
Dim TimerMem As Single      ' remembers the start tick of a game
Dim TickFPS As Single       ' used to calculate fps
Dim FPSCount As Integer     ' count fps / sec
Dim FrameSkip As Boolean    ' is the fps at max?
Dim ShapeMinus As Integer   ' the value the progress indicator must take away to look right
Const ShapeMaxWidth = 14535 ' the size of the progress bar

'*********************************'
' Intro/Ending Sequence variables '
'*********************************'
Dim DispMN%           ' counting var used in debriefing
Dim PicXpos%          ' position of the remaining missile/city picture object
Dim TxtIndex%         ' a var to store the next letter to be displayed
Dim MsgBriefing$      ' the message for that level
Dim SkipBrief As Boolean        ' skipping breifings

'*********************'
' for count variables '
'*********************'
Dim Counting%         ' general for loops that don't need special attention (no DoEvents around that will screw it up)
Dim MissileIndex%     ' the index for the array of missiles
Dim CHFor%            ' check hit for loop
Dim HitFor%           ' hit detect for loop
Dim BombForLoop%      ' a for loop counter for bomb movements
Dim CalExtraCity!     ' loop for calculating bonus cities
Dim MN%               ' missile num, used Mn because its short because it will be used as an array num
Dim CheckSameCity%    ' check if it randomized the same city
Dim BombSearch%       ' counting variable,
Dim FinalCheck%       ' count var used to check if there are any more explosions on screen
Dim EMM%              ' for enemy missile movements
Dim EnemyNum%         ' used as an index for enemy missile
Dim EMindex%          ' index of missile explosions

'**************************************'
' changable speeds or objects for game '
'**************************************'
Dim ESpeedMax!        ' max speed of enemy missile
Dim ESpeedMin!        ' min speed of enemy missile
Dim StartingEMN%      ' starting enemy missile numbers, how many e missiles game starts with

Private Sub Form_LostFocus()
PauseGame
End Sub

Private Sub MnuAbout1_Click()   ' these Mnu object/menus all work with the same concept
PlaySound App.Path + PlayS + "\sound\open.wav", 0&, SND_ASYNC Or SND_NODEFAULT Or SND_NOSTOP Or SND_NOWAIT  ' play sound
Load FrmAbout                   ' load the form about
FrmAbout.Show                   ' show about
Main.Enabled = False            ' disable main so that they must exit the new loaded form before returning back to main
End Sub

Private Sub MnuClose_Click()    ' same concpet as above
Dim MsgAns%
PlaySound App.Path + PlayS + "\sound\open.wav", 0&, SND_ASYNC Or SND_NODEFAULT Or SND_NOSTOP Or SND_NOWAIT
MsgAns = MsgBox("Are you sure you want to close the current game?", vbQuestion + vbYesNo, "Close")
If MsgAns = vbYes Then
    GamePlay = -1               ' when it closes the game, the gameplay will be set to -1 (no game playing)
    CloseScreen                 ' close the big slider
    MnuClose.Enabled = False    ' disable close since the game is already closed
    MnuNew1.Enabled = True      ' now they can start a enw game
End If
End Sub

Private Sub MnuConfig1_Click()
PlaySound App.Path + PlayS + "\sound\open.wav", 0&, SND_ASYNC Or SND_NODEFAULT Or SND_NOSTOP Or SND_NOWAIT
Load FrmConfig
FrmConfig.Show
Main.Enabled = False
End Sub

Private Sub MnuExit1_Click()
'PlaySound App.Path + PlayS + "\sound\open.wav", 0&, SND_ASYNC Or SND_NODEFAULT Or SND_NOSTOP Or SND_NOWAIT
Unload Me                       ' goto unload procedure
End Sub

Private Sub MnuGame_Click()     ' this menu has menu's under it, it does not load other forms
PlaySound App.Path + PlayS + "\sound\popup.wav", 0&, SND_ASYNC Or SND_NODEFAULT Or SND_NOSTOP Or SND_NOWAIT
End Sub

Private Sub MnuHelp1_Click()    ' same concept as above
PlaySound App.Path + PlayS + "\sound\popup.wav", 0&, SND_ASYNC Or SND_NODEFAULT Or SND_NOSTOP Or SND_NOWAIT
End Sub

Private Sub MnuHtopic1_Click()  ' open help form
PlaySound App.Path + PlayS + "\sound\open.wav", 0&, SND_ASYNC Or SND_NODEFAULT Or SND_NOSTOP Or SND_NOWAIT
Load FrmHelp
FrmHelp.Show
Main.Enabled = False
End Sub

Private Sub MnuMusic1_Click()
If MnuMusic1.Checked = False Then
    MnuMusic1.Checked = True
    If GamePlay = -1 Then       ' if music clicked and it's not playing a game, then rand a opening music
        Randomize
        PlayMusic Int(4 * Rnd + 1) & ".wav"
    Else                        ' if music clicked and is playing a game, then play the level music
        PlayMusic "m" & LevelNum + 1 & ".wav"
    End If
Else
    MnuMusic1.Checked = False   ' if music is playing and click, then close music
    StopMusic
End If
End Sub

Private Sub MnuNew1_Click()     ' open new form
PlaySound App.Path + PlayS + "\sound\open.wav", 0&, SND_ASYNC Or SND_NODEFAULT Or SND_NOSTOP Or SND_NOWAIT
Load FrmNew
FrmNew.Show
Main.Enabled = False
End Sub

Private Sub MnuScore1_Click()   ' open score form
PlaySound App.Path + PlayS + "\sound\open.wav", 0&, SND_ASYNC Or SND_NODEFAULT Or SND_NOSTOP Or SND_NOWAIT
Load FrmScore
FrmScore.Show
Main.Enabled = False
End Sub

Private Sub MnuSetting1_Click() ' there are menus under this menu,
PlaySound App.Path + PlayS + "\sound\popup.wav", 0&, SND_ASYNC Or SND_NODEFAULT Or SND_NOSTOP Or SND_NOWAIT
End Sub

Private Sub MnuSound1_Click()   ' sound click
If MnuSound1.Checked = False Then   ' if sound was not checked, then check it (enable sound)
    PlayS = ""                      ' make plays = null so that when program is opening sound, the dir will be correct
    MnuSound1.Checked = True        ' make it true (sound is now enabled, so show it), then play a sound file
    PlaySound App.Path + PlayS + "\sound\sndclose.wav", 0&, SND_ASYNC Or SND_NODEFAULT Or SND_NOSTOP Or SND_NOWAIT
Else                            ' if sound was checked then turn it off
    PlayS = "Trash!@$#"         ' specify false directory so sound cannot be played
    MnuSound1.Checked = False   ' show that sound is not enabled,
    PlaySound App.Path + PlayS + "\sound\sndopen.wav", 0&, SND_ASYNC Or SND_NODEFAULT Or SND_NOSTOP Or SND_NOWAIT
End If
End Sub

Private Sub Form_Load()         ' load form
Callsign = "Defiant"            ' default commander name when game starts
DiffMode = 1
DoEvents
RS = Space$(8)                  ' value needed for music, gives 8 spaces
LevelNum = -1                   ' not playing
GamePlay = -1
GameTime = 60
StartAnimatedCursor (App.Path + "\graphics\cursor\default.cur")  ' start new cursor

PicBottom.Top = 1200            ' move the big pic to cover the game window
PicBottom.ZOrder 0              ' make that pic go to front, it should already be in front, but just in case
PicBottom.Picture = LoadPicture(App.Path & "\graphics\desktop\bottom.jpg")
GifTop.ZOrder 0                 ' giftop should also be in front
Randomize
StopMusic                       ' if stop any music palying, there should be no music playing (that uses the same resourse) but just in case
PlayMusic Int(4 * Rnd + 1) & ".wav"     ' play an opening music
On Error Resume Next            ' some components are already loaded, so use this to not report errors

'Load FrmSprites                ' load the sprite form
'***********************'
' preload intro objects '
'***********************'
For Counting = 0 To 7           ' load the city pics (for debriefing)
    Load ImRemainCity(Counting)
Next

For Counting = 0 To 29          ' load the image missile pics (for debriefing)
    Load ImRemainMissile(Counting)
    ImRemainMissile(Counting).Visible = False
    ImRemainMissile(Counting).Picture = LoadPicture(App.Path + "\graphics\missile\missile.gif")
Next
PicStat.Left = 15360            ' put these 2 mid size pic boxes (sliders) out of the screen, but not invis
PicRemainCM.Left = -9600
LblRemainCity.Width = 15        ' put these 2 labels too very small so they can expand later
LblRemainMissile.Width = 15
LblDescrip.Caption = ""         ' discription will be nothing, therefore invisible, but it's not set to invis

'*************************'
' preload game components '
'*************************'

For Counting = 0 To 9           ' preload missiles count at the bottom
    Load ImLMN(Counting)
    ImLMN(Counting).Left = ImLMN(Counting - 1).Left + ImLMN(Counting).Width
    ImLMN(Counting).Visible = True
    Load ImMMN(Counting)
    ImMMN(Counting).Left = ImMMN(Counting - 1).Left + ImMMN(Counting).Width
    ImMMN(Counting).Visible = True
    Load ImRMN(Counting)
    ImRMN(Counting).Left = ImRMN(Counting - 1).Left + ImRMN(Counting).Width
    ImRMN(Counting).Visible = True
    ImLMN(Counting).Picture = LoadPicture(App.Path + "\graphics\missile\missile.gif")
    ImMMN(Counting).Picture = LoadPicture(App.Path + "\graphics\missile\missile.gif")
    ImRMN(Counting).Picture = LoadPicture(App.Path + "\graphics\missile\missile.gif")
    ImLMN(Counting).ZOrder 0    ' make sure they are all above the background picture
    ImMMN(Counting).ZOrder 0
    ImRMN(Counting).ZOrder 0
Next
LblX(0).ZOrder 0        ' these should be infront
LblX(1).ZOrder 0
LblX(2).ZOrder 0
LblLeftN.ZOrder 0
LblMidN.ZOrder 0
LblRightN.ZOrder 0

'*****************************'
' open original configuration '
'*****************************'
On Error GoTo MakeNewScore1     ' if an error occurs when reading config.txt, then make a new config.txt
Dim ConfigK As String           ' open files, config keys, load from file config.txt

Open App.Path + "\Misc\Config.txt" For Input As #1
Input #1, ConfigK               ' extra line to skip the "DO NOT modify this file"
Input #1, ConfigK
    KeyLm = UCase(ConfigK)
Input #1, ConfigK
    KeyMm = UCase(ConfigK)
Input #1, ConfigK
    KeyRm = UCase(ConfigK)
Input #1, ConfigK
Controlmode = ConfigK
Close #1
FrmSplashL.Show
FrmSplashL.Refresh

Me.Show                         ' finished loading the nessasarry components, load pictures and interface
Unload FrmSplashL
Exit Sub                        ' exit sub, dont creat new scorefile

MakeNewScore1:                  ' if an error occurred, then it will come here,
NewScore                        ' write new file
End Sub

Private Sub Form_Unload(Cancel%)      'unload form
'Dim MsgAns%
'If MnuClose.Enabled = True Then         ' if there is a game going on and they exit, ask for comformation
'    MsgAns = MsgBox("Are you sure you want to Exit?", vbYesNo + vbQuestion, "Exit")
'    If MsgAns = vbNo Then
'        Cancel = 1          ' if answer was vbno, then cancel will be true and will not exit
'        Exit Sub
'    End If
'End If
' play "Battlefield control terminated" voice
PlaySound App.Path + PlayS + "\sound\offline.wav", 0&, SND_ASYNC Or SND_NOSTOP Or SND_NOWAIT Or SND_NODEFAULT
DoEvents
'Sleep (1000)
StopMusic
Set Main = Nothing          ' releases my objects (pic)
Set FrmSprites = Nothing    ' releases the sprites
StartAnimatedCursor (OriginalCursorPath)

' if display changed before game, change it back
If OriginalX <> -1 Then
    Dim lHdc As Long                                    ' used by display mode
    With DispMode
        .dmBitsPerPel = OriginalC: .dmPelsHeight = (OriginalX / 4) * 3: .dmPelsWidth = OriginalX
    End With
    DModeChangeStat = ChangeDisplaySettings(DispMode, &H1)
End If

End                         ' end program if unload didn't already do so
End Sub

'************************************'
' MAIN PROGRAMMING CODES STARTS HERE '
'************************************'

Private Sub MainGame()
TickGot = GetTickCount          ' make sure that it will get through the first loop
' This is how the tick works, i take the current tick and minus it by the tick taken from the end of the previous loop _
then i check to see if its higher than the game tick

Do
    If GamePlay = 4 Then Exit Sub       ' if not playing then exit sub
    If GamePlay = 2 Then                ' if gameplay is not playing, then exit right now
        PauseGame
        Exit Sub
    End If
    If LevelNum > 2 Then
        LblScore.Caption = Score
    Else
        Score = 0
        LblScore.Caption = 0
    End If
    DoEvents                            ' do events
    If AnySP = False And Me.Enabled = False And LblScore.Caption = Score Then GoTo EndLevel
    ' i made it go to a line instead of writing endseq directly becuase this way, it will not loop again after its doen with endseq
    If TickTimer(GetTickCount, TickNow, TickGot) = 1 And Me.Enabled = True Then  ' if it's time to do another round of moving and game is not waiting, then do it
    'GetTickCount -TickGot >= TickNow
        TickGot = GetTickCount          ' re-Get the tick time
        'GAME TIMER
        ' keep track of how long the game will keep throwing in new enemies
        If TickTimer(GetTickCount, 100 * TimerCount, TimerMem) = 1 And ProTRemaining.Width <> 0 Then
            TimerCount = TimerCount + 1
            LblTRemain.Caption = Format(LblTRemain.Caption - 0.1, "0.0")    ' display in label the amount of time till new objects are not created
            If LblTRemain.Caption < 0 Then LblTRemain.Caption = 0           ' just in case lbltremain.Caption is less than 0 then reset it back to 0 because the progress bar cannot be less than 0
            GameTcount = ShapeMaxWidth - ((GameTime - Int(LblTRemain.Caption)) * ShapeMinus)                      ' the indicator will show how much time in a bar
            If GameTcount <= 0 Then
                ProTRemaining.Width = 0
            Else
                ProTRemaining.Width = GameTcount
            End If
            If LblTRemain.Caption <= 0 Then                             ' if time is 0 then disable all timers that release new objects
                ProTRemaining.Width = 0
                TimerNewEM.Enabled = False
                TimerSplit.Enabled = False
                TimerBomber.Enabled = False
            End If                                              ' bonus timer will still be active because that's the way the game works, if bonus timer is disabled when game time stops, it will could be too hard
        End If
        FPSCount = FPSCount + 1
        If TickTimer(GetTickCount, 1000, TickFPS) = 1 Then
            LblFPS.Caption = "FPS: " & FPSCount
            If FrameSkip = True Then LblFPS.Caption = LblFPS.Caption & " (Max)"
            FPSCount = 0
            TickFPS = GetTickCount
            FrameSkip = False
        End If
        
        ' GAME STUFF
        MissileMove                                         ' move the missiles
        EMMove                                              ' move the enemy missiles
        BombMove                                            ' move the bomb
        BomberMove                                          ' move the bombers
        Bonus                                               ' check the bonues
        ' check hit
        For CHFor = 0 To MaxEM                              ' this hit detect mode is used because i'm afriad that by putting this in the main loop
        With Sprites(7, CHFor)                              ' it will go too slow for slow computers, also, by using this way, if the player hits the enemy missile
            If .Show = True Then                            ' too late (missile tip is almost at the bottom edge of the exposion, they will leak through, this is like
                                                            ' a game feature where they must be careful and hit dead on
                If HitDetect(.Width, .Height) = True Then _
                    Call MissileDie(1, .Width, .Height)     ' check explosion hits
            End If
        End With
        Next
        
        DoAnimation                                         ' standalone animation
        PicMain.Refresh                                     ' refreash the screen
        If AnySP = False And LblTRemain.Caption = 0 And GamePlay = 1 Then
            ' if all enemies are gone and game is playing then (gameplay =1 was written so it only runs the following once)
            GamePlay = 3                ' no game play and wait for end timer to go
            LblError.Caption = "All Clear! SAMs Locked, UnArmed"
            TimerError.Enabled = True
            Me.Enabled = False          ' they can't fire
        End If

    Else
        FrameSkip = True
    End If
Loop

EndLevel:
EndSeq
End Sub

Private Sub PicMain_KeyDown(KeyCode%, Shift%)   ' key strike
If KeyCode = 32 Or Shift = 4 Then   ' if hit the space bar, or alt then (somehow, alt will stop all codes except timers so that if they hit alt,
    'they will select the disabled menus and game objects will stop but not the timers.... so i had to include alt in here, but i'm not going to tell them about pressing alt
    If GamePlay = 1 Then        ' if game is playing, then pause
        GamePlay = 2            ' pausegame, when the MainGame loop detects that gameplay is now 2, it will exit the main loop
    ElseIf GamePlay = 2 And Shift <> 4 Then    ' if game is paused and player did not hit alt, then (i didn't want them to unpause with alt they may make a mistake with alt-tab)
        UnPauseGame             ' unpause game, when it does to unpause game, unpauseGame will lead into the main loop
    End If
    Exit Sub                    ' exit sub, we don't want anything else here, so exit
End If

If GamePlay <> 1 Then Exit Sub  ' if a key is pressed when game is not playing and key is not the space bar, then dont' do anything, exit the sub
If Controlmode = "mo" Then Exit Sub     ' if it's only using the mouse then exit the sub
GetCursorPos MouseXY                    ' get the mouse coord
CurX = MouseXY.x - 24                   ' since getcursorpos gets co ordinates of the window, i need to convert the values for picmain's pixel position use
CurY = MouseXY.y - 125                  ' same concept as curx
If RMM < 1 And MMM < 1 And LMM < 1 Then ' if there are no missiles in all then show no missile
    TickNow = DieSpeed                         ' speed up game if player can't do anything, we don't want them to get bored, this may not affect the gamespeed because it depends on the cpu
    If RMM = 0 Or MMM = 0 Or LMM = 0 Then
        PlaySound App.Path + PlayS + "\sound\firing\empty" & Int(2 * Rnd + 1) & ".wav", 0&, SND_ASYNC Or SND_NODEFAULT Or SND_NOSTOP Or SND_NOWAIT
NoMissiles:                             ' other parts will access this label when individual banks are empty
        LblError.Caption = "OUT OF MISSILES"    ' change caption to say that there are no missiles
        TimerError.Enabled = True               ' now show display out of missile
    End If
    Exit Sub
ElseIf CurY > MinMHeight Then           ' this is just a safty measure, normally mouse clipping will limit it to game window, however if someone wants to test game without clipping,
    LblError.Caption = "TOO LOW!!"      ' then these will be useful, i wrote this when i did not impliment clipping, it doesn't hurt to have it, so i will not delete it
    TimerError.Enabled = True           ' show it's too low
Else
    Gotkey = UCase(Chr(KeyCode))        ' change all to capital case because that's what we are using
    '*****************'
    ' keyboard detect '
    '*****************'
    MissileBankUse = -1                 ' state that it's not using a bank right now
    If Gotkey = KeyLm Then              ' if key is the same key for firing left side then fire left
        If LMM = 0 Then
            Randomize                   ' this sound line is repeated in 3 cases instead of just putting one just below "NoMissiles" because i don't want this file to play if all banks are gone,
            PlaySound App.Path + PlayS + "\sound\firing\empty" & Int(2 * Rnd + 1) & ".wav", 0&, SND_ASYNC Or SND_NODEFAULT Or SND_NOSTOP Or SND_NOWAIT
            GoTo NoMissiles             ' if left has no missile and player fires left, then show no missile
        End If
        MissileBankUse = 0              ' use left bank if there are missiles
    ElseIf Gotkey = KeyMm Then          ' mid
        If MMM = 0 Then
            Randomize
            PlaySound App.Path + PlayS + "\sound\firing\empty" & Int(2 * Rnd + 1) & ".wav", 0&, SND_ASYNC Or SND_NODEFAULT Or SND_NOSTOP Or SND_NOWAIT
            GoTo NoMissiles             ' same concept as above
        End If
        MissileBankUse = 1
    ElseIf Gotkey = KeyRm Then          ' right
        If RMM = 0 Then
            Randomize
            PlaySound App.Path + PlayS + "\sound\firing\empty" & Int(2 * Rnd + 1) & ".wav", 0&, SND_ASYNC Or SND_NODEFAULT Or SND_NOSTOP Or SND_NOWAIT
            GoTo NoMissiles             ' same
        End If
        MissileBankUse = 2
    End If
    If MissileBankUse <> -1 Then PrepFire   ' if no banks used, the skip prepfire (dont' fire)
End If
End Sub

Private Sub PicMain_LostFocus()         ' if picmain lost it's focus, then reset it's focus back
On Error Resume Next                    ' if there are other forms loaded (other apps) then it cannot set picmain to focus, so don't report error
If GamePlay = 1 Or GamePlay = 2 Then PicMain.SetFocus   ' if game is playing or paused, then picmain should always be in focus because it needs space bar to pause and unpause game, otherwise they will have to click on the pic to get manual focus
End Sub

Private Sub PicMain_MouseDown(Button%, Shift%, x As Single, y As Single)    ' detect mouse
If GamePlay <> 1 Then Exit Sub          ' if game is not playing then exit
If Controlmode = "km" Or Controlmode = "mo" Then        ' if control mode is using mouse then do the rest
    If RMM < 1 And MMM < 1 And LMM < 1 Then       ' if all missiles are gone then
        If RMM = 0 Or MMM = 0 Or LMM = 0 Then
            LblError.Caption = "OUT OF MISSILES"            ' caption = out of missiles
            PlaySound App.Path + PlayS + "\sound\firing\empty" & Int(2 * Rnd + 1) & ".wav", 0&, SND_ASYNC Or SND_NODEFAULT Or SND_NOSTOP Or SND_NOWAIT
            TimerError.Enabled = True       ' show out of missiles
        End If
        TickNow = 1                     ' increase gamespeed so player doesn't have to wait
    ElseIf y > MinMHeight Then          ' same concept as keydown's too low thing
        LblError.Caption = "TOO LOW!!"
        TimerError.Enabled = True
    Else
        '*******************'
        ' mouse auto select '
        '*******************'
        ' auto decide which Missile bank to use, get cursor pos.
        If x < 293 Then                 ' if hit the left side then, 1/3 of the screen
            If LMM > 0 Then             ' if left side has missiles left, then use left side
                MissileBankUse = 0
            ElseIf MMM > 0 Then         ' if no more left missiles, then use middle bank
                MissileBankUse = 1
            ElseIf RMM > 0 Then         ' if no more middile missiles, then use right bank
                MissileBankUse = 2
            End If
            
        ElseIf x < 671 Then             ' if hit the middle part of the game window then (1/3 of the screen)
            If MMM > 0 Then             ' use middle bank if there are missiles
                MissileBankUse = 1
            ElseIf x > 464 And RMM > 0 Then     ' if no middle missiles, then use right if clicked to the right
                MissileBankUse = 2              ' use right
            ElseIf x < 485 And LMM > 0 Then     ' use left if clicked on left side and left bank has missiles
                MissileBankUse = 0              ' use left
            ElseIf x > 484 And RMM < 1 Then     ' if clicked on right and right had no missiles
                MissileBankUse = 0              ' use left
            ElseIf x < 485 And LMM < 1 Then     ' if clicked on left and left had no missiles
                MissileBankUse = 2              ' use right
            End If
            
        ElseIf x > 670 Then             ' if hit right side (1/3 of the screen)
            If RMM > 0 Then             ' if right bank missile is not empty
                MissileBankUse = 2      ' then use right bank
            ElseIf MMM > 0 Then         ' if middile bank is not empty, then use that
                MissileBankUse = 1      ' use mid
            ElseIf LMM > 0 Then         ' if left is not empty then
                MissileBankUse = 0      ' use left bank
            End If
        End If
        CurX = x                        ' state that curx = x for pos of mouse to transfter prepfire
        CurY = y                        ' same concept
        PrepFire                        ' goto prepfire
    End If
End If
End Sub

Private Sub PrepFire()

If MissileBankUse = 0 Then              ' if using left then
    If LMspecType = 1 Then              ' if instantaneous then
    ' instant is different from the rest of the power ups because it does not go through the normal procedures (firing sub) _
    so i must repeat those specific codes to make the interface update the number of missiles left
        LMM = LMM - 1                   ' there will be one less missile
        If LMM = 10 Then                ' if there are 10 missiles now, then
            LblX(0).Visible = False     ' hide the labels that shows how many missiles player has if the number exceeds 10
            LblLeftN.Visible = False
            For Counting = 0 To 9       ' make all the missile images visible
                ImLMN(Counting).Visible = True
            Next
        ElseIf LMM < 10 Then            ' if the missile number is less than 10 then disable that missile pic that shot out
            ImLMN(LMM).Visible = False
        Else                            ' if missiles are greater than 10 then update that label that
            LblLeftN.Caption = LMM      ' shows how many missiles are left numerically
        End If
        GoTo Instant                    ' run to instant
    ElseIf LMspecType = 2 Then          ' if 2 split
        LMM = LMM + 1                   ' if split into 2 then i must add the missiles on that bank by 1 because even though
        GoTo Split2                     ' its shooting 2 missiles, it should only use 1 misisle, that's the good thing about that powerup
    ElseIf LMspecType = 3 Then          ' if 3 split
        LMM = LMM + 2                   ' same concept as split 2
        GoTo Split3
    End If
ElseIf MissileBankUse = 1 Then          ' same concept as the previous if statment, use that all vars are pointing to middile instead of left
    If MMspecType = 1 Then              ' if instantaneous
        MMM = MMM - 1
        If MMM = 10 Then
            LblX(1).Visible = False
            LblMidN.Visible = False
            For Counting = 0 To 9
                ImMMN(Counting).Visible = True
            Next
        ElseIf MMM < 10 Then
            ImMMN(MMM).Visible = False
        Else
            LblMidN.Caption = MMM
        End If
        GoTo Instant
    ElseIf MMspecType = 2 Then          ' if 2 split
        MMM = MMM + 1
        GoTo Split2
    ElseIf MMspecType = 3 Then          ' if 3 split
        MMM = MMM + 2
        GoTo Split3
    End If
ElseIf MissileBankUse = 2 Then          ' same concept as previous elseif statement, now alll vars are pointing to the right missile bank
    If RMspectype = 1 Then              ' if instantaneous
        RMM = RMM - 1
        If RMM = 10 Then
            LblX(2).Visible = False
            LblRightN.Visible = False
            For Counting = 0 To 9
                ImRMN(Counting).Visible = True
            Next
        ElseIf RMM < 10 Then
            ImRMN(RMM).Visible = False
        Else
            LblRightN.Caption = RMM
        End If
        GoTo Instant
    ElseIf RMspectype = 2 Then          ' if 2 split
        RMM = RMM + 1
        GoTo Split2
    ElseIf RMspectype = 3 Then          ' if 3 split
        RMM = RMM + 2
        GoTo Split3
    End If
End If

' make normal missile
StartNewMissile                         ' if there were no specials then make a new standard missile
Exit Sub                                ' exit sub, dont make any specials

' the specials
Instant:
' looses a missile, this whole part is needed because it does not go through the moving/startnewmissile procedure
    PlaySound App.Path + PlayS + "\sound\firing\speed.wav", 0&, _
        SND_ASYNC Or SND_NOSTOP Or SND_NOWAIT Or SND_NODEFAULT      ' make the speed fire sound
    'PlaySound App.Path + PlayS + "\sound\explode\explodespecial.wav", 0&, _
        SND_ASYNC Or SND_NOSTOP Or SND_NOWAIT Or SND_NODEFAULT      ' make the special exposion sound
    Call MissileDie(2, CurX, CurY)      ' type 2 will skip all other variable restates in missiledie
    Exit Sub
    
Split2:
    CurX = CurX + 32                    ' state the new right side missile
    StartNewMissile                     ' make right missile with the new x coord
    CurX = CurX - 64                    ' make left missile with new x coord
    StartNewMissile
    Exit Sub

Split3:
    StartNewMissile                     ' make a new standard misisle first, right on the destination
    CurX = CurX + 64                    ' state the new position of the new right side missile
    StartNewMissile                     ' make right missile
    CurX = CurX - 128                   ' state the new position of the new left side missile
    StartNewMissile                     ' make left missile
End Sub

Public Sub Briefings(SeqMode%)
PicRemainCM.SetFocus                    ' set this picbox to focus because it needs to be in focus if they want to skip the mission briefings
GamePlay = 4                            ' some subs access this procedure without saying gameplay = 2
Me.Enabled = False                      ' disable main, some procedures accessing this sub does not have it disabled, so i must re-disable it again
NoMove                                  ' can't move this is so they don't mess with things
DoEvents
Restarting:                             ' used when debriefing is done

If SeqMode = 0 Then                     ' display the right picture for the right mode
    LblAnyKey.Visible = True
    StartGameVar                        ' start a level
    If LevelNum > 9 Then               ' if level is higher than 10 then display the space picture
        PicRemainCM.Picture = LoadPicture(App.Path + "\graphics\missions\space.jpg")
    Else                                ' if lower than 10 the display world map pics
        PicRemainCM.Picture = LoadPicture(App.Path + "\graphics\missions\" & LevelNum + 1 & ".jpg")
    End If
    LblMissionNum.Caption = "Mission " & LevelNum + 1   ' show mission number before slider slides in
    LblMissionNum.Visible = True
    StopMusic                               ' stop music
    PlayMusic "m" & LevelNum + 1 & ".wav"   ' play the next level music
ElseIf SeqMode = 1 Or SeqMode - 1 Then      ' if its debriefing mode or game is finished then, i have not found or make a good picture for this, i left it here so i can use it later when i find the right pic
    LblAnyKey.Visible = False
'    PicRemainCM.Picture = LoadPicture(App.Path + "\graphics\mission\score.jpg")
End If

' play sound and slide in slider
PlaySound App.Path & PlayS + "\sound\other\Lslidero.wav", 0&, SND_ASYNC Or SND_NOSTOP Or SND_NOWAIT Or SND_NODEFAULT
Sleep (5)
Do While PicRemainCM.Left < 0           ' pull out the left side slider picbox
    PicRemainCM.Left = PicRemainCM.Left + 100
    Sleep (0.5)                          ' speed of slide
    DoEvents                            ' make sure the slide moves because this is a do loop
Loop

If SeqMode = 1 Then GoTo DeBriefing     ' choose mode
'*****************'
' briefings/intro '
'*****************'
PicMain.Picture = LoadPicture(App.Path + "\graphics\backgrounds\" & LevelNum + 1 & ".jpg")  ' sets the background picture right now
If LevelNum >= 3 And LevelNum <= 8 Then ' this cursor choosing must be asked every briefing time because of level cheating
    StartAnimatedCursor (App.Path + "\graphics\cursor\attack.ani")
ElseIf LevelNum >= 9 Then
    StartAnimatedCursor (App.Path + "\graphics\cursor\attack2.ani")
End If
Select Case LevelNum                    ' define an intro for that level
Case 0
MsgBriefing = "Welcome Commander, This is a training mission. To skip briefing missions in the future, press THE ANY KEY " & _
    vbCrLf & "You MUST conserve missiles because there will be no reinforcements to help you. You can trigger a " & _
    "huge chain reaction with just one missile. The engineers always fill your missile banks to " & MissileReload1 & " missiles. DO NOT waste them. " & _
    "You will recieve no points in these training missions (mission 1, 2, 3)" & _
    "These drone missiles are just to help you get use to the controls, they should pose no threat. However, we cannot disarm them once they are released "
    
Case 1
' enemy missiles are real, go a little faster
MsgBriefing = "You are using Standard Surface to Air Missiles, and the Structures that are going to launch them are SAM sites. " & _
    vbCrLf & "Mouse control Clipping Initialized.... You will only be able to fire in the Firing Range, remember there is a height limit You cannot fire lower than the minimum height. " & _
    vbCrLf & "... Somethings wrong... the weather patterns have changed.... "
Case 2
' enemy are powerful
MsgBriefing = "We are detecting massive weather anomalies....  " & vbCrLf & _
    "The drones are faster.  " & _
    "In real combat, the enemy may even use different paint for ICBMs shell to camoflage with the background. "
Case 3
' bonus start, 100, 200
MsgBriefing = "We have detected a huge nuclear explosion.... " & _
    "The enemy is lauching all their ICBMs. " & _
    "Our allies are helping us by teleporting crates can only be obtained by hitting them right in the middle, " & _
    "This is so that it will not be that easy for you to get, They will only stay on screen for a short while before enemy Hackers take them down again. " & _
    "When you have enough points, you will be awarded with a new city " & _
    "... the enemy has implimented split ICBMs, any of them can split randomly"

Case 4
'BOMBER IN
MsgBriefing = "We have spotted fighters coming this way. Take them out as soon a possible because the longer they are alive, the more missiles they will fire " & _
    vbCrLf & "Remeber, you must hit the Nose-Cone (Cockpit) of the plane, otherwise the armour will still hold the plane together " & _
    "If the plane can be killed by hitting anywhere, it would be too easy "
    
Case 5
' bomber in
MsgBriefing = "The enemy has released another Nuke, this one is 10 times stronger than the previous... CRAZY IDIOTS! " & _
    "Bombers have been detected. Be careful, the bombs they release are crazy bombs, their paths are unpredictable "
Case 6
'bonus 4
MsgBriefing = "You are getting reinforcements from the allies, for every one of this crate you get, 5 more missiles will be added to your SAM site. " & _
    "if you hit it, that crate will go to the LAST MISSIEL LAUNCHER BANK FIRED. " & _
    "Hackers are in, do not hit the skull bonuses. if you do, you will give direct cleartext connection to hackers and you will loose 1000 points, Our hackers will try to take them down as soon as possible "
Case 7
' bomber 2
MsgBriefing = "There are now Civilian Planes on the battlefield, Why the heck are they here?! DO NOT SHOOT THEM, if you do, you will lose credibility " & _
    "If a chain reaction killed the plane and not directly your missile, you will still lose those 1000 points, think before you shoot "
Case 8
' bonus 5
MsgBriefing = "The Nuke has finished expanding, However, OUR PLANET HAVE BROKEN ITS ORIGINAL COURSE, more info later " & vbCrLf & _
    "+10 bonuses are available as well as others... "
Case 9
' bomber 3
MsgBriefing = "We have calculated that the Earth was taken off course by the massive nuke. The good news is that we are not heading towards the sun " & _
    "The bad news is that we have no clue what other planets we are going to hit. " & _
    "But we do have some good news. We have upgraded your SAM sites, now each sam site will hold " & MissileReload2 & " sams at the start of the mission"
Case 10
'Bonus 6
MsgBriefing = "Take a good look at the view commander. That's our neighbouring planet, you are not going to see it again. " & vbCrLf & _
    "The allied have made a breakthrough in technology! Instantaneous Missiles are available! " & _
    "They do not have travel times, they will explode as soon as you give the command because of their astonashing speed " & _
    "If you get that powerup and lose that SAM site, you will not get it back in the next level, our Engineers cannot replace the powerup. "
Case 11
' bomber 4
MsgBriefing = "We are entering a Worm hole, we do not know where it leads to, hopefully the worm hole is big enough to carry the whole planet " & _
    "These stupid enemies, They do not have another Nuke to correct our planets course and they just keep sending their bombers, take them out. "
Case 12
' bonus 7
MsgBriefing = "We have survived through the worm hole, and entering a new galaxy. " & vbCrLf & _
    "+5 +5 +5 crates are available, this will add 5 extra missiles to each SAM site, Geez, how the heck do they fix 15 missiles in one crate... "
Case 13
'bomber5
MsgBriefing = "Our first Nebula, isn't that nice, now get back to work! " & _
    "More bombers, these ones have better speed and more payload... "
Case 14
'Bonus 8
MsgBriefing = "In order to couter the increase of ICBMs and planes, our allies have developed a machine to " & _
    "create 2 missiles out of one, don't ask me how they work, they just do! These are great powerups, don't lose them " & _
    "be careful using them, tests have shown that sometimes enemy missiles can slip passed the middle crack "
Case 15
'bomber8, to nod fighter
MsgBriefing = "We have detected extremely fast bombers and fighters coming your way. " & _
    "... One of them do not seem to be of human technology "
Case 16
'bonus 9
MsgBriefing = "+500 points are available, We need more resources for the cities commander, Grab those crates as soon as possible " & _
    "These places are getting stranger and stranger. We are figuring out a way to stop the earth's movement. "
Case 17
' bomber = 10
MsgBriefing = "Concord spotted, don't shoot them either! "
Case 18
'bomber 12
MsgBriefing = "Somethings wrong, it's so quiet... there doesn't seem to be anything new... have they given up trying to take over the world? "
Case 19
'bonus 10
MsgBriefing = "We saw some of the stealth bombers explode. Be alert, stealth units can only be seen physically. AI cannot detect it and cannot warn you "
Case 20
'bomber 12 all
' bonus 10
MsgBriefing = "We have found a new system of planets that are inhabitable, We are going to jump off to the other planets and " & _
    "establish a new coloney there. " & _
    "This is the last mission, IT IS impossible for you to win this round, They are throwing everything at you, if you do win, you're cheating! " & _
    "if you do win and did not cheat, you will get a huge reward...10000 points!!)"
End Select

TxtIndex = 0                            ' reset index to 0
SkipBrief = False

Do
    If SkipBrief = True Then            ' if skip briefing is true, then skip it
        SkipBrief = False               ' reset it back to false for next time use
        GoTo Skipb
    End If
    'show briefing one letter at a time
    If TxtIndex < Len(MsgBriefing) Then ' display message until full message is displayed
        TxtIndex = TxtIndex + 1             ' forward index
        LblDescrip.Caption = Left(MsgBriefing, TxtIndex)    ' display the message string a letter at a time, then play a sound
        PlaySound App.Path & PlayS + "\sound\other\letters.wav", 0&, SND_ASYNC Or SND_NOSTOP Or SND_NOWAIT Or SND_NODEFAULT
        Sleep (15)                          ' speed of displaying letters
    End If
    PicRemainCM.Enabled = True
    Me.Enabled = True
    PicRemainCM.SetFocus
    Me.Enabled = False
    NoMove
    DoEvents
Loop


'show briefing

Skipb:
PlaySound App.Path & PlayS + "\sound\other\Lsliderc.wav", 0&, SND_ASYNC Or SND_NOSTOP Or SND_NOWAIT Or SND_NODEFAULT
Do While PicRemainCM.Left > -9600       ' close the sliders
    PicRemainCM.Left = PicRemainCM.Left - 40    ' movement
    Sleep (0.5)
    DoEvents
Loop
' reset all values for debriefing
LblMissionNum.Visible = False
LblDescrip.Caption = ""
OpenScreen                              ' go to open screen
Exit Sub                                ' don't go to debriefing

'*************'
' Debriefings '
'*************'
DeBriefing:
LblRemainCity.Width = 15                ' put these 2 labels too very small so they can expand later
LblRemainMissile.Width = 15
LblStat1.Visible = True
LblStat1.Visible = True
LblStat1.Caption = 0                    ' shows the 2 number labels
LblStat2.Caption = Score
LblRand1.Caption = ".00000000"
LblRand2.Caption = ".00000000"

PlaySound App.Path & PlayS + "\sound\other\rslidero.wav", 0&, SND_ASYNC Or SND_NOSTOP Or SND_NOWAIT Or SND_NODEFAULT
Do Until PicStat.Left < 9960            ' pull out the status window pic
    PicStat.Left = PicStat.Left - 40
    DoEvents
    Sleep (1)
Loop

Do Until LblRemainMissile.Width > 1335  ' start unfolding the labels "city" and "missile"
    LblRemainCity.Width = LblRemainCity.Width + 30
    LblRemainMissile.Width = LblRemainMissile.Width + 30
    Sleep (20)
    DoEvents
Loop

For Counting = 1 To 6                   ' flash the 2 labels
    If LblRemainMissile.Visible = True Then         ' flash
        LblRemainMissile.Visible = False
        LblRemainCity.Visible = False
        Sleep (150)
    ElseIf LblRemainMissile.Visible = False Then
        LblRemainMissile.Visible = True
        LblRemainCity.Visible = True
        Sleep (300)
        PlaySound App.Path & PlayS + "\sound\other\score.wav", 0&, SND_ASYNC Or SND_NOSTOP Or SND_NOWAIT Or SND_NODEFAULT
    End If
    DoEvents
Next

PicXpos = 1560                          ' restate that the city pics should start at 1560 (x)
For Counting = 0 To 7                   ' display remaining cities
    If GIFCity(Counting).FrIndex <> -1 Then     ' if city has not been destoryed (not -1) then display it
        ImRemainCity(Counting).Picture = LoadPicture(App.Path + "\graphics\cities\city" & GIFCity(Counting).FrIndex + 1 & ".gif")
        ImRemainCity(Counting).Left = PicXpos       ' display the city with the right x coord, we don't want cities showing one on top of each other
        PicXpos = PicXpos + 600                     ' cal the next x position for the next city
        ImRemainCity(Counting).Visible = True       ' use for loop to display all remaining cities
        If LevelNum > 3 Then LblStat1.Caption = LblStat1.Caption + PCity ' each surviving city Pcity points will added
        PlaySound App.Path & PlayS + "\sound\other\over.wav", 0&, SND_ASYNC Or SND_NOSTOP Or SND_NOWAIT Or SND_NODEFAULT
        DoEvents
        Sleep (200)
    End If
Next

DispMN = 0                              ' reset this counting variable
PicXpos = 1560                          ' reset this last used value for other uses when this section is run for the first time
If Cheat = True And CheatLevel = -1 Then GoTo SkipMcount
If LMM = -1 Then LMM = 0                ' say that if it was destoryed, then the count number is 0 not -1
If MMM = -1 Then MMM = 0
If RMM = -1 Then RMM = 0
LblRemainMN.Caption = 0                 ' reset it to 0
If LMM + MMM + RMM > 29 Then            ' if remainig missiles are more than 30 then count it numerically instead of display individual missiles
    ImRemainMissile(0).Visible = True   ' show the labels
    LblX(4).Visible = True
    LblRemainMN.Visible = True
    Do Until DispMN >= LMM + MMM + RMM   ' if the couting (index) var is greater than missiles then stop it
        LblRemainMN.Caption = LblRemainMN.Caption + 1   ' add one to the total number of left over missiles
        If LevelNum > 3 Then LblStat1.Caption = LblStat1.Caption + PMissile ' add points to the score transfer label
        DispMN = DispMN + 1                             ' advance the index, then play sound
        PlaySound App.Path & PlayS + "\sound\other\over.wav", 0&, SND_ASYNC Or SND_NOSTOP Or SND_NOWAIT Or SND_NODEFAULT
        DoEvents
        Sleep (50)
    Loop
Else                                    ' if missiles are under 30 then display them all
    Do Until DispMN >= LMM + MMM + RMM                   ' same concept as above
        ImRemainMissile(DispMN).Left = PicXpos          ' put the missile in the right x pos
        ImRemainMissile(DispMN).Visible = True          ' display remaining missiles
        If LevelNum > 3 Then LblStat1.Caption = LblStat1.Caption + PMissile  ' each extra missile will give extra Pmisisle points
        DispMN = DispMN + 1                             ' advance index
        PicXpos = PicXpos + ImRemainMissile(0).Width    ' advance the x pos so it is ready for next missile pic use
        PlaySound App.Path & PlayS + "\sound\other\over.wav", 0&, SND_ASYNC Or SND_NOSTOP Or SND_NOWAIT Or SND_NODEFAULT
        DoEvents
        Sleep (50)
    Loop
End If

SkipMcount:
Sleep (1000)                    ' when finished displaying the missiles, then wait 1 sec then transfer the points
Do Until LblStat1.Caption <= 0  ' do it unti the bonus points are all gone
    LblStat1.Caption = LblStat1.Caption - 1             ' take a point out of the bonus points
    LblStat2.Caption = LblStat2.Caption + 1             ' put a point in the total points
    LblRand1.Caption = Format("." & Int(9999998 * Rnd + 1), ".0000000")     ' rand a number, used to look cool, i see these things everywhere
    LblRand2.Caption = Format("." & Int(9999998 * Rnd + 1), ".0000000")
    PlaySound App.Path & PlayS + "\sound\other\score.wav", 0&, SND_ASYNC Or SND_NOSTOP Or SND_NOWAIT Or SND_NODEFAULT
    'Sleep (0.1)
    DoEvents                    ' make sure it refreshes the screen
Loop
LblRand1.Caption = ".0000000"   ' make sure they are at 0s,
LblRand2.Caption = ".0000000"
LblStat1.Caption = "0"          ' just in case something bad happened, this will be set to 0
Score = LblStat2.Caption        ' score is updated
DoEvents                        ' make sure lblrands displays .0000000 because there is a sleep command just below

Sleep (2000)                    ' timer pauses for 2 seconds
For CalExtraCity = ExtraCity * 100 To MinRCNum Step -ExtraCity  ' everytime the score is over multiples of that set value (extracity), then an extra city is awarded
    If Score >= CalExtraCity Then       ' if the score is over or equal to extra city then award city
        CityReserve = CityReserve + 1   ' increase the city reserve num by 1
        MinRCNum = MinRCNum + ExtraCity ' the minimum score to get a bonus city will increase by extracity
        LblBonusCityMsg.Visible = True  ' show that a new city has been awarded
        PlaySound App.Path & PlayS + "\sound\other\city.wav", 0&, SND_ASYNC Or SND_NOSTOP Or SND_NOWAIT Or SND_NODEFAULT
        DoEvents                        ' make sure the sound plays, and the things show
        Sleep (1500)
        Exit For
    End If
Next
' play sound for slider c;ose
PlaySound App.Path & PlayS + "\sound\other\RSliderC.wav", 0&, SND_ASYNC Or SND_NOSTOP Or SND_NOWAIT Or SND_NODEFAULT
Do                              ' to close the slider, i've decided to do it in a different style
    Sleep (0.5)
    DoEvents                    ' make sure the movement shows
    If PicRemainCM.Left > -9600 Or PicStat.Left < 15240 Then    ' close the sliders, if both are still open then
        If PicRemainCM.Left > -9600 Then        ' if this is not closed then move it again
            PicRemainCM.Left = PicRemainCM.Left - 40
        End If
        If PicStat.Left < 15360 Then            ' if this is not closed then move it again
            PicStat.Left = PicStat.Left + 40
        End If
    Else                                        ' if both pics are closed then exit the do loop
        Exit Do
    End If
Loop

' reset all things for briefing to begin
LblRemainCity.Width = 15                                ' those 2 labels will be invis (0 width)
LblRemainMissile.Width = 15
For Counting = 0 To 29                                  ' invis all missile image box
    ImRemainMissile(Counting).Visible = False
Next
For Counting = 0 To 7
    ImRemainCity(Counting).Picture = LoadPicture("")    ' no picture to all cities
Next
LblX(4).Visible = False                                 ' take out some labels
LblRemainMN.Visible = False
LblBonusCityMsg.Visible = False
Sleep (1000)                                            ' pause for 1 sec before reopening the briefings
If LevelNum = 21 Then 'SeqMode = -1 Then                                    ' if seqmode is game finished, then don't start briefings, exit instead and return to endseq
    MsgBox "10000 points added for completing Missile Command", vbInformation, "Award of EXCELLENCE!... and freakyness"
    Score = Score + 10000
    LevelNum = 100
    EndSeq
Else
    SeqMode = 0                                         ' done the debriefing, go to next mission by saying seqmode = briefing
    GoTo Restarting                                     ' go back to briefings
End If
End Sub

Public Sub OpenScreen()         ' used to start a game
Me.Enabled = False              ' disable form because they can't play right now
GetCleanScreen                  ' get a clean screen for the game
DrawStructure                   ' make structures appear before screen opens
NoMove
PlaySound App.Path & PlayS + "\sound\restoredown.wav", 0&, SND_ASYNC Or SND_NOSTOP Or SND_NOWAIT Or SND_NODEFAULT
Do Until PicBottom.Top >= 10440 ' open slider
    'If PicSlider.Left < 10560 Then PicSlider.Left = PicSlider.Left + 60
    PicBottom.Top = PicBottom.Top + 60
    Sleep (0.5)
    DoEvents
Loop
Wait                            ' goto the wait sub
End Sub

Public Sub CloseScreen()        ' close the picture screen, this sub is used by a few other subs, not just one
Me.Enabled = False              ' main is disabled
NoMove                          ' cursor cannot move
PlaySound App.Path & PlayS + "\sound\restoreup.wav", 0&, SND_ASYNC Or SND_NOSTOP Or SND_NOWAIT Or SND_NODEFAULT
Do Until PicBottom.Top <= 1200  ' close big picture
    If PicSlider.Left > 4700 Then PicSlider.Left = PicSlider.Left - 60
    PicBottom.Top = PicBottom.Top - 60
    Sleep (0.5)
    DoEvents
Loop
Me.Enabled = True               ' enable form again
DisableTrap
End Sub

Private Sub PicRemainCM_KeyPress(KeyAscii%)       ' if any keys are pressed during the briefing, it will terminate
SkipBrief = True                ' skip brief flag will be up
End Sub

Private Sub Wait()
NoMove
With LblStart
    .Top = 204                                  ' specify location, very striagh forward
    .FontSize = 24
    .ForeColor = vbRed
    If LevelNum > 2 Then                        ' if there are real enemies, then display red alert ...
        PlaySound App.Path & PlayS + "\sound\warning.wav", 0&, SND_ASYNC Or SND_NOSTOP Or SND_NOWAIT Or SND_NODEFAULT
        .Caption = "RED ALERT! RED ALERT!"      ' will equal this
        .Visible = True                         ' show it
        .Refresh                                ' refresh
        Sleep (1000)                            ' wait a while
        PlaySound App.Path & PlayS + "\sound\warning.wav", 0&, SND_ASYNC Or SND_NOSTOP Or SND_NOWAIT Or SND_NODEFAULT
        .Caption = "Incoming Enemy ICBM's In..."
        .Refresh                                ' show the label
        Sleep (1000)                            ' wait for 1.5 sec
        PlaySound App.Path & PlayS + "\sound\warning.wav", 0&, SND_ASYNC Or SND_NOSTOP Or SND_NOWAIT Or SND_NODEFAULT
    Else                                        ' if they are still in practice (level 1 - 3) then dont' show it's enemy
        .Caption = "Incoming Drones In..."
        .Visible = True
        .Refresh
        Sleep (1000)
    End If
    .Visible = False                            ' make it false because the .left change is
    .FontSize = 30                              ' very great and sometimes i saw the long message in place of numbers for a split second
    For Counting = 3 To 1 Step -1               ' count down
        Select Case Counting
        Case 3                                  ' since i'm changing fonts for every count, i have to regive all new locations for it to look right
            .Top = 200
        Case 2
            .Top = 186
        Case 1
            .Top = 172
        End Select
        .Visible = True                         ' make visible again, only makes a difference after "incoming icbm"
        .Caption = Counting
        .ForeColor = vbRed
        .Refresh
        Sleep (300)
        .ForeColor = vbBlack
        .Refresh
        Sleep (150)
        .FontSize = .FontSize + 12
    Next
    .Top = 158
    .ForeColor = vbRed
    .Caption = "GO!"
    DoEvents
    Sleep (300)
    .Visible = False
End With
GamePlay = 1                                    ' game now set to playing
TimerMem = GetTickCount
TimerCount = 1
TickFPS = GetTickCount
Me.Enabled = True                               ' enable form so they can click
UnPauseGame                                     ' enable all timers, disables all menus, menus have to be disabled because even though the mouse clipping is on, they can still access the menus by keyboard shortcuts
End Sub

Private Sub PicRemainCM_LostFocus()
If GamePlay = 4 And Main.Enabled = False Then PicRemainCM.SetFocus
End Sub

Private Sub TimerError_Timer()                      ' the purpose of this timer is to display messages

If TimerError.Interval = 100 Then                   ' this set of if statements flashes teh messages
    TimerError.Interval = 300
    LblError.Visible = True
Else
    TimerError.Interval = 100
    LblError.Visible = False
End If

FlashN = FlashN + 1                                 ' used to count how many flashes
If GamePlay = 3 Or GamePlay = 2 Then                ' if gameplay is 2 or 3 then keep flashing, don't turn flashing off
    FlashN = 0                                      ' just so it doesn't overflow, i'll keep saying its 0
    Exit Sub                                        ' dont disable timererror if gameplay = 2, 3
End If
If FlashN > 6 Then                                  ' if finished flashing and gameplay is not waiting, then
    TimerError.Enabled = False                      ' disable the things needed to be disabled and
    LblError.Visible = False
    FlashN = 0                                      ' reset back to 0
End If
End Sub

Private Sub TimerMusic_Timer()
If IsStopped = True Then
    If GamePlay = -1 Then                           ' if music clicked and it's not playing a game, then rand a opening music
        Randomize
        PlayMusic Int(4 * Rnd + 1) & ".wav"
    Else                                            ' if music clicked and is playing a game, then play the level music
        PlayMusic "m" & LevelNum + 1 & ".wav"
    End If
End If
End Sub

Private Sub TimerNewEM_Timer()                      ' make new enemy missiles
If EOnSnum >= MaxEM + 1 Then Exit Sub               ' if there are no empty lines left, then exit
TempCount = 0
For EnemyNum = 0 To MaxEM                           ' searchs for an empty line
    If Sprites(7, EnemyNum).Show = False Then
        Call ENewM(False, 0, 0)                     ' make a brand new enemy missile
        TempCount = TempCount + 1
        If EOnSnum > ICBMlowest Or TempCount > ICBMlowest Then                 ' if enemies on screen is more than lowest, then do not make more missiles
            Exit For
        End If
    End If
Next
Randomize
TimerNewEM.Interval = (1.5 * Rnd + 0.3) * 1000      ' rand seconds until new Enemy loads
End Sub

Private Sub TimerSplit_Timer()                      ' timer for splitting a missle
EMSplit                                             ' split missile
Randomize
TimerSplit.Interval = Int(3 * Rnd + 3) * 1000       ' six seconds to 3 seconds until another splits
End Sub

Private Sub TimerBomber_Timer()                     ' timer for making a new bomber
Randomize
If Sprites(1, BType).Show = True Or BomberMinType = -1 Or BomberAllowed = -1 Then Exit Sub        ' if there is a bomber still on screen, then exit, don't make new bomber, yet another safty feature just incase a freak event happends
BType = (BomberAllowed - BomberMinType) * Rnd + BomberMinType                       ' rand a bomber type
If BType <> 11 And BType <> 12 Then
    LblError.Caption = "Warning! AirCraft Detected!"    ' it doesn't matter which kind of plane(except for stealth), it will still say this message!
    PlaySound App.Path & PlayS + "\sound\Bomber\siren.wav", 0&, _
                    SND_ASYNC Or SND_NOSTOP Or SND_NOWAIT Or SND_NODEFAULT

    FlashN = 0                                      ' reset this so that it will flash a couple of times, others don't have this line because i really want them to notice a plane is coming.
    TimerError.Enabled = True
End If
With Sprites(1, BType)
    .Frames = 64 * Rnd + 36                         ' randomize the droptime for the new bomber, units measured in the # of movements of bomber, i shouldn't use the variable frames,                        ' but it's a value that the bomber doesn't use so to save space and not declare a new variable, this is used, it kinda makes sence... how many frames (events)till it drops it's load
    .Direction = 1 * Rnd                            ' choose which direction it comes from
    If .Direction = 0 Then                          ' if coming from left
        .Xp = 0 - .Width                            ' will start at the left edge of picmain
    ElseIf .Direction = 1 Then                      ' if coming from right
        .Xp = PicMain.ScaleWidth                    ' will start at the very right of picmain
    End If
    .Yp = 50                                        ' the sprite height will always be the same
    .EventCount = 0                                 ' reset event count to 0
    .Show = True                                    ' it is now shown.
End With
TimerBomber.Enabled = False                         ' stop making new bomber
End Sub

Private Sub TimerBonus_Timer()                      ' timer to drop a new bonus
If Sprites(6, BonusType).Show = True Or BonusAllowed = -1 Then Exit Sub   ' .show should already be false when it comes into this proceedure, but i've seen some wierd stuff becuase of doevents, so this is a safty thing
PlaySound App.Path & PlayS + "\sound\other\bonus.wav", 0&, SND_ASYNC Or SND_NOSTOP Or SND_NOWAIT Or SND_NODEFAULT
BonusType = (BonusAllowed - BonusMinType) * Rnd + BonusMinType  ' rand the allowed bonus on this level
With Sprites(6, BonusType)                          ' display the correct bonus
    .Frames = BonusTActive                          ' "time" the bonus stays on screen ( how many frames has passed by)
    .EventCount = 0                                 ' reset current display "time" to 0
    .Show = True                                    ' it should now be shown no screen
    .Xp = (PicMain.ScaleWidth - 100) * Rnd + 50     ' rand a place
    .Yp = (MinMHeight - 100) * Rnd + 50              ' rand places must be places where missiles can be hit
End With
TimerBonus.Enabled = False                          ' stops the bonus from making another one until the other is done
End Sub

Public Sub PauseGame()                  ' to pause the game
TimerNewEM.Enabled = False
TimerSplit.Enabled = False
TimerBonus.Enabled = False
TimerBomber.Enabled = False
MnuGame.Enabled = True                  ' enable some menus
MnuSetting1.Enabled = True
MnuAbout1.Enabled = True
MnuConfig1.Enabled = True
MnuHelp1.Enabled = True
MnuHtopic1.Enabled = True
MnuScore1.Enabled = True
DisableTrap                             ' release mouse
If GamePlay <> 4 Then                   ' if gameplay does not = endseq waiting then put game paused
    LblError.Caption = "Game Paused"
    TimerError.Enabled = True
    LblPauseStat.Caption = "Press Space to Resume Game"
    PicMain.SetFocus
End If
Me.Caption = Me.Caption & " --GAME PAUSED"
StartAnimatedCursor (App.Path + "\graphics\cursor\default.cur")
End Sub
Public Sub UnPauseGame()                ' to unpause a game will be a littile longer than to pause a game, it needs to decide which to enable
Me.Caption = "Missile Command By Xiaohua Guo"
GamePlay = 1
If LblTRemain.Caption > 0 Then          ' if there is still time then
    TimerNewEM.Enabled = True
    If TimerSplit.Interval <> 0 Then TimerSplit.Enabled = True      ' enable split missile if it's suppose to be enabled (interval of 0 means that splitting is not allowed)
    If BomberAllowed <> -1 Then TimerBomber.Enabled = True  ' if bombers are allowed, then enable bobmertime
End If
If BonusAllowed <> -1 Then TimerBonus.Enabled = True        ' if bonus is allowed, then go bonus
TimerError.Enabled = False              ' take away the flashing "game paused"
LblError.Visible = False                ' take away the flashing "game paused"
MnuGame.Enabled = False                 ' disable all menus again
MnuSetting1.Enabled = False
MnuAbout1.Enabled = False
MnuHelp1.Enabled = False
MnuHtopic1.Enabled = False
MnuScore1.Enabled = False
MnuNew1.Enabled = False
EnableTrap                              ' enable trap
If LevelNum >= 0 And LevelNum <= 2 Then
    StartAnimatedCursor (App.Path + "\graphics\cursor\normal.ani")
ElseIf LevelNum >= 3 And LevelNum <= 8 Then ' cursor choosing
    StartAnimatedCursor (App.Path + "\graphics\cursor\attack.ani")
ElseIf LevelNum >= 9 Then
    StartAnimatedCursor (App.Path + "\graphics\cursor\attack2.ani")
End If
LblPauseStat.Caption = "Press Space to Pause Game"
PicMain.SetFocus                        ' it will only change picmain to focus if main is enabled, if it's not, then it means the highscores form is loaded and that will give me an error
MainGame                                ' go into main game loop
End Sub
Public Sub StartGameVar()               ' restates variable values for the new round / start of game
NoMove

Randomize
'load interface
LblScore.Caption = Score                ' load the label's values
LblCallsign.Caption = "Commander: " & Callsign
GamePlay = 0                            ' game is new
GameTime = 60                           ' normal game is 1 min (60 sec)
ChooseLevel:                            ' used by cheat
Select Case LevelNum                    ' define characteristics of a level
Case 0
    ' define how a new game will be
    EColor = vbWhite: ESpeedMax = 1.5: ESpeedMin = 1: StartingEMN = 10       ' enemy variables, Ecolor is color of enemy, espeed is their speed, startingEMN is the starting number of teh missile
    CityN = 8: CityReserve = 0          ' since this is a brand new game (levelnum = 0) we have to say that the cities are 8 and reserves are 0
    BomberAllowed = -1                  ' no bombers in this level
    BonusAllowed = -1                   ' no bonuses in this level
    TimerBonus.Enabled = False
    TimerBonus.Interval = 0             ' make sure it's not allowed
    TimerBomber.Enabled = False
    TimerSplit.Interval = 0             ' no splitting, all these timers should already be false, but just in case
    LMspecType = 0                      ' there should be no specials on level 0 (1), this is need to be respecified for every new game
    MMspecType = 0
    RMspectype = 0
    ImLSpec.Picture = LoadPicture("")
    ImMSpec.Picture = LoadPicture("")
    ImRSpec.Picture = LoadPicture("")
    ' load cities
    For Counting = 0 To CityN - 1       ' display the city pics for the game
        Randomize                       ' it doens't matter if there are 2 cities that look like the same, so i wll just rand a number and don't care about duplications
        GIFCity(Counting).Show = True
        GIFCity(Counting).FrIndex = Int(24 * Rnd)  ' load pic
    Next
    If Cheat = True And CheatLevel <> -1 Then   ' if cheat is enabled and level is specified, i did it like this because i needed to respecify a new game (no specials etc)
        LevelNum = CheatLevel           ' the new level will be the cheat level
        GoTo ChooseLevel                ' goto choose level to get to the right level
    End If
    If FrmNew.ChSkip.Value = 1 Then
        LevelNum = 3
        GoTo ChooseLevel
    End If
    GameTime = 15                       ' first training will be 15 sec, the 1st cheat level will still be 60 sec
Case 1
    'define how level 2 will be
    GameTime = 20
    EColor = vbWhite: ESpeedMax = 2: ESpeedMin = 1: StartingEMN = 10
    BomberAllowed = -1                  ' they should still be 0, but just in case
    BonusAllowed = -1
Case 2                                  ' they still don't get to see good things at level 3 because i want them to get to a good amount of score before releasing the hounds,
    GameTime = 25
    EColor = vbWhite: ESpeedMax = 2.5: ESpeedMin = 1.5: StartingEMN = 10
    BomberAllowed = -1
    BonusAllowed = -1
Case 3
    ' after training, all gametime will be 1 min
    EColor = vbRed: ESpeedMax = 2.5: ESpeedMin = 1.5: StartingEMN = 12
    TimerBomber.Enabled = False
    BomberAllowed = -1
    BonusAllowed = 1                    ' can display 100 bonus' can display 200 bonus
    BonusMinType = 0
    BonusTActive = 30
    TimerBonus.Interval = (3 * Rnd + 2) * 1000  ' rand bonus time
    TimerBonus.Enabled = True
Case 4                                  ' some of the codes are repeated, but they are needed for cheat to work (restate the values when a game hasn't been played)
    EColor = vbYellow: ESpeedMax = 2: ESpeedMin = 1.5: StartingEMN = 13
    TimerBomber.Interval = (3 * Rnd + 7) * 1000
    TimerBomber.Enabled = True
    BombSpeed = 2
    BMaxDropT = 200: BMinDropT = 150     ' max /min droptimes
    BomberAllowed = 0                   ' allow the first bomber
    BonusAllowed = 1
    BomberMinType = 0
    BonusMinType = 0
    BonusTActive = 30
    TimerBonus.Interval = (3 * Rnd + 2) * 1000
    TimerBonus.Enabled = True
    TimerSplit.Enabled = True
    TimerSplit.Interval = Int(3 * Rnd + 3) * 1000
Case 5
    EColor = vbGreen: ESpeedMax = 2: ESpeedMin = 2: StartingEMN = 13
    TimerBomber.Interval = (3 * Rnd + 7) * 1000
    TimerBomber.Enabled = True
    BombSpeed = 2
    BMaxDropT = 200: BMinDropT = 150     ' max /min droptimes
    BomberAllowed = 1
    BonusAllowed = 1
    BomberMinType = 0
    BonusMinType = 0
    BonusTActive = 30
    TimerBonus.Interval = (2 * Rnd + 2) * 1000
    TimerBonus.Enabled = True
    TimerSplit.Enabled = True
    TimerSplit.Interval = Int(3 * Rnd + 3) * 1000
Case 6
    EColor = RGB(0, 255, 100): ESpeedMax = 2.5: ESpeedMin = 2: StartingEMN = 14
    TimerBomber.Interval = (3 * Rnd + 7) * 1000
    TimerBomber.Enabled = True
    BombSpeed = 2
    BMaxDropT = 200: BMinDropT = 150     ' max /min droptimes
    BomberAllowed = 2
    BonusAllowed = 3
    BomberMinType = 0
    BonusMinType = 0
    BonusTActive = 30
    TimerBonus.Interval = (2 * Rnd + 2) * 1000
    TimerBonus.Enabled = True
    TimerSplit.Enabled = True
    TimerSplit.Interval = Int(3 * Rnd + 3) * 1000
Case 7
    EColor = RGB(0, 255, 200): ESpeedMax = 2.5: ESpeedMin = 2.5: StartingEMN = 14
    TimerBomber.Interval = (5 * Rnd + 5) * 1000
    TimerBomber.Enabled = True
    BombSpeed = 2
    BMaxDropT = 200: BMinDropT = 150     ' max /min droptimes
    BomberAllowed = 3
    BonusAllowed = 3
    BomberMinType = 0
    BonusMinType = 0
    BonusTActive = 30
    TimerBonus.Interval = (2 * Rnd + 5) * 1000      ' timer is longer for bonuses because "story" says you won't be getting as much crates
    TimerBonus.Enabled = True
    TimerSplit.Enabled = True
    TimerSplit.Interval = Int(3 * Rnd + 3) * 1000
Case 8
    EColor = RGB(0, 255, 255): ESpeedMax = 2.5: ESpeedMin = 2.5: StartingEMN = 15
    TimerBomber.Interval = (5 * Rnd + 5) * 1000
    TimerBomber.Enabled = True
    BombSpeed = 2
    BMaxDropT = 150: BMinDropT = 150     ' max /min droptimes
    BomberAllowed = 4
    BonusAllowed = 4
    BomberMinType = 1
    BonusMinType = 1
    BonusTActive = 30
    TimerBonus.Interval = (3 * Rnd + 2) * 1000
    TimerBonus.Enabled = True
    TimerSplit.Enabled = True
    TimerSplit.Interval = Int(3 * Rnd + 3) * 1000
Case 9
    EColor = RGB(0, 200, 255): ESpeedMax = 3: ESpeedMin = 2: StartingEMN = 15
    TimerBomber.Interval = (5 * Rnd + 5) * 1000
    TimerBomber.Enabled = True
    BombSpeed = 2
    BMaxDropT = 150: BMinDropT = 150     ' max /min droptimes
    BomberAllowed = 5
    BonusAllowed = 4
    BomberMinType = 1
    BonusMinType = 1
    BonusTActive = 30
    TimerBonus.Interval = (3 * Rnd + 2) * 1000
    TimerBonus.Enabled = True
    TimerSplit.Enabled = True
    TimerSplit.Interval = Int(3 * Rnd + 2) * 1000
Case 10
    EColor = RGB(0, 100, 255): ESpeedMax = 3.5: ESpeedMin = 2.5: StartingEMN = 16
    TimerBomber.Interval = (5 * Rnd + 2) * 1000
    TimerBomber.Enabled = True
    BombSpeed = 3
    BMaxDropT = 150: BMinDropT = 100     ' max /min droptimes
    BomberAllowed = 6
    BonusAllowed = 5
    BomberMinType = 1
    BonusMinType = 1
    BonusTActive = 30
    TimerBonus.Interval = (1 * Rnd + 2) * 1000
    TimerBonus.Enabled = True
    TimerSplit.Enabled = True
    TimerSplit.Interval = Int(3 * Rnd + 3) * 1000
Case 11
    EColor = RGB(0, 0, 255): ESpeedMax = 3.5: ESpeedMin = 2.5: StartingEMN = 16
    TimerBomber.Interval = (5 * Rnd + 4) * 1000
    TimerBomber.Enabled = True
    BombSpeed = 3
    BMaxDropT = 150: BMinDropT = 100     ' max /min droptimes
    BomberAllowed = 7
    BonusAllowed = 5
    BomberMinType = 3
    BonusMinType = 1
    BonusTActive = 30
    TimerBonus.Interval = (1 * Rnd + 2) * 1000
    TimerBonus.Enabled = True
    TimerSplit.Enabled = True
    TimerSplit.Interval = Int(1 * Rnd + 3) * 1000
Case 12
    EColor = RGB(100, 0, 255): ESpeedMax = 3.5: ESpeedMin = 3: StartingEMN = 16
    TimerBomber.Interval = (2 * Rnd + 9) * 1000
    TimerBomber.Enabled = True
    BombSpeed = 3
    BMaxDropT = 150: BMinDropT = 70
    BomberAllowed = 7
    BonusAllowed = 6
    BomberMinType = 2
    BonusMinType = 1
    BonusTActive = 30
    TimerBonus.Interval = (1 * Rnd + 3) * 1000
    TimerBonus.Enabled = True
    TimerSplit.Enabled = True
    TimerSplit.Interval = Int(2 * Rnd + 3) * 1000
Case 13
    EColor = RGB(200, 0, 255): ESpeedMax = 3.5: ESpeedMin = 3.5: StartingEMN = 16
    TimerBomber.Interval = (5 * Rnd + 4) * 1000
    TimerBomber.Enabled = True
    BombSpeed = 3
    BMaxDropT = 130: BMinDropT = 70     ' max /min droptimes
    BomberAllowed = 7
    BonusAllowed = 6
    BomberMinType = 4
    BonusMinType = 1
    BonusTActive = 30
    TimerBonus.Interval = (4 * Rnd + 2) * 1000
    TimerBonus.Enabled = True
    TimerSplit.Enabled = True
    TimerSplit.Interval = Int(3 * Rnd + 3) * 1000
Case 14
    EColor = RGB(255, 0, 255): ESpeedMax = 3.5: ESpeedMin = 3.5: StartingEMN = 17
    TimerBomber.Interval = (5 * Rnd + 2) * 1000
    TimerBomber.Enabled = True
    BombSpeed = 3
    BMaxDropT = 120: BMinDropT = 70     ' max /min droptimes
    BomberAllowed = 7
    BonusAllowed = 7
    BomberMinType = 3
    BonusMinType = 2
    BonusTActive = 30
    TimerBonus.Interval = (5 * Rnd + 2) * 1000
    TimerBonus.Enabled = True
    TimerSplit.Enabled = True
    TimerSplit.Interval = Int(3 * Rnd + 3) * 1000
Case 15
    EColor = RGB(255, 0, 200): ESpeedMax = 4: ESpeedMax = 3.5: StartingEMN = 17
    TimerBomber.Interval = (5 * Rnd + 2) * 1000
    TimerBomber.Enabled = True
    BombSpeed = 3
    BMaxDropT = 100: BMinDropT = 70     ' max /min droptimes
    BomberAllowed = 9
    BonusAllowed = 7
    BomberMinType = 6
    BonusMinType = 2
    BonusTActive = 30
    TimerBonus.Interval = (6 * Rnd + 2) * 1000
    TimerBonus.Enabled = True
    TimerSplit.Enabled = True
    TimerSplit.Interval = Int(3 * Rnd + 3) * 1000
Case 16
    EColor = RGB(255, 0, 100): ESpeedMax = 4: ESpeedMin = 3.5: StartingEMN = 17
    TimerBomber.Interval = (2 * Rnd + 2) * 1000
    TimerBomber.Enabled = True
    BombSpeed = 3
    BMaxDropT = 100: BMinDropT = 50
    BomberAllowed = 9
    BonusAllowed = 8
    BomberMinType = 3
    BonusMinType = 3
    BonusTActive = 30
    TimerBonus.Interval = (7 * Rnd + 2) * 1000
    TimerBonus.Enabled = True
    TimerSplit.Enabled = True
    TimerSplit.Interval = Int(3 * Rnd + 3) * 1000
Case 17
    EColor = RGB(255, 0, 0): ESpeedMax = 4: ESpeedMin = 4: StartingEMN = 18
    TimerBomber.Interval = (2 * Rnd + 2) * 1000
    TimerBomber.Enabled = True
    BombSpeed = 3
    BMaxDropT = 100: BMinDropT = 50
    BomberAllowed = 10
    BonusAllowed = 8
    BomberMinType = 6
    BonusMinType = 3
    BonusTActive = 30
    TimerBonus.Interval = (6 * Rnd + 2) * 1000
    TimerBonus.Enabled = True
    TimerSplit.Enabled = True
    TimerSplit.Interval = Int(3 * Rnd + 3) * 1000
Case 18
    EColor = RGB(200, 0, 0): ESpeedMax = 4.5: ESpeedMin = 4: StartingEMN = 18
    TimerBomber.Interval = (5 * Rnd + 2) * 1000
    TimerBomber.Enabled = True
    BombSpeed = 4
    BMaxDropT = 70: BMinDropT = 50
    BomberAllowed = 12
    BonusAllowed = 8
    BonusTActive = 30
    BomberMinType = 10
    BonusMinType = 0
    BonusTActive = 20
    TimerBonus.Interval = (8 * Rnd + 2) * 1000
    TimerBonus.Enabled = True
    TimerSplit.Enabled = True
    TimerSplit.Interval = Int(3 * Rnd + 3) * 1000
Case 19
    EColor = RGB(150, 150, 150): ESpeedMax = 5: ESpeedMin = 4.5: StartingEMN = 19
    TimerBomber.Interval = (2 * Rnd + 2) * 1000
    TimerBomber.Enabled = True
    BombSpeed = 4
    BMaxDropT = 50: BMinDropT = 50
    BomberAllowed = 12
    BonusAllowed = 9
    BonusTActive = 30
    BomberMinType = 6
    BonusMinType = 4
    BonusTActive = 20
    TimerBonus.Interval = (8 * Rnd + 2) * 1000
    TimerBonus.Enabled = True
    TimerSplit.Enabled = True
    TimerSplit.Interval = Int(3 * Rnd + 3) * 1000
Case 20
    EColor = vbBlack: ESpeedMax = 5: ESpeedMin = 5: StartingEMN = 20
    TimerBomber.Interval = (5 * Rnd + 2) * 1000
    TimerBomber.Enabled = True
    BombSpeed = 4
    BMaxDropT = 25: BMinDropT = 25     ' max /min droptimes
    BomberAllowed = 12
    BonusAllowed = 9
    BomberMinType = 6
    BonusMinType = 4
    BonusTActive = 15
    TimerBonus.Interval = (3 * Rnd + 2) * 1000
    TimerBonus.Enabled = True
    TimerSplit.Enabled = True
    TimerSplit.Interval = Int(3 * Rnd + 3) * 1000
End Select

LblTRemain.Caption = Format(GameTime, "0.0")
ProTRemaining.Width = ShapeMaxWidth
ShapeMinus = ProTRemaining.Width / GameTime

LblLevel.Caption = "Level: " & LevelNum + 1    ' this must be specified after the case select because the level num will change if cheat is enabled
LblX(0).Visible = False
LblX(1).Visible = False
LblX(2).Visible = False
LblLeftN.Visible = False
LblMidN.Visible = False
LblRightN.Visible = False

' load the missile banks (SAMS)
SamIndex = 0
If LevelNum > 8 Then SamIndex = 1                  ' change to something different (flak cannons)
Initialize                              ' restate all sprites .shows are all false, since its not playing the game at this time, we can sacrafice a tick or two

If Cheat = True And CheatLevel = -1 Then    ' if cheating and not chooseing levels
    LMM = 99: MMM = 99: RMM = 99            ' there are 99 missiles
Else                                        ' if not cheating
    If LevelNum > 8 Then
        LMM = MissileReload2: MMM = MissileReload2: RMM = MissileReload2            ' starting level missile number if sam is upgraded
    Else
        LMM = MissileReload1: MMM = MissileReload1: RMM = MissileReload1
    End If
End If
ImLMN(0).Visible = True                 ' show only the first missile
ImMMN(0).Visible = True
ImRMN(0).Visible = True
LblX(0).Visible = True                  ' show "x"
LblX(1).Visible = True
LblX(2).Visible = True
For Counting = 1 To 9                   ' make others invis
    ImLMN(Counting).Visible = False
    ImMMN(Counting).Visible = False
    ImRMN(Counting).Visible = False
Next Counting
LblLeftN.Caption = LMM                  ' show it's 99
LblMidN.Caption = MMM
LblRightN.Caption = RMM
LblLeftN.Visible = True                 ' make them visible
LblMidN.Visible = True
LblRightN.Visible = True
GifLMBank(SamIndex).Show = True
GifMMBank(SamIndex).Show = True
GifRMBank(SamIndex).Show = True

ImExtraCity.Picture = LoadPicture(App.Path + "\graphics\cities\city" & Int(24 * Rnd) & ".gif")
If CityReserve > 0 And CityN < 8 Then               ' if there are less than max city on scree, and there are extra cities, then
    If 8 - CityN <= CityReserve Then                ' if there are more extra cities then free places, then
        For Counting = 0 To 7                       ' go through and fill all that needs to be filled
            If GIFCity(Counting).Show = False And CityReserve > 0 Then       ' if that place has no city and there are still extra cites then make new city
                GIFCity(Counting).Show = True
                GIFCity(Counting).FrIndex = Int(24 * Rnd)
                CityReserve = CityReserve - 1       ' since a city was taken from the extras, it must be removed
                CityN = CityN + 1
            End If
        Next
    Else
        Dim TempIndexC%                   ' very temporary file, can be declared here
        For Counting = 1 To CityReserve             ' go through and fill all the way till you have no extra cities
            Do                                      ' keep randing until there is a free spot
                Randomize
                TempIndexC = Int(7 * Rnd + 1)
                If GIFCity(TempIndexC).Show = False Then
                    GIFCity(TempIndexC).Show = True
                    GIFCity(TempIndexC).FrIndex = Int(24 * Rnd)
                    CityReserve = CityReserve - 1   ' since a city was taken from the extras, it must be removed
                    CityN = CityN + 1
                    Exit Do                         ' exit loop and search for next city
                End If
            Loop
        Next
    End If
End If
LblCityResN.Caption = CityReserve       ' refreash the number of extra cities


EOnSnum = 0                             ' reset value
BType = 0

'Load enemies
For EnemyNum = 0 To StartingEMN - 1     ' it will be very rare for 2 missiles to be at the same location and destination, so i will not bother with getting rid of 2 of the same e missiles
    Call ENewM(False, 0, 0)             ' make new missile
Next
' state/restate all variables
MissileIndex = 0
EnemyNum = 0                            ' could be used by other loops, so reset this
TickNow = GameSpeed                   ' restate that ticknow = gamespeed
End Sub

Private Sub StartNewMissile()           ' how to start a new missile
For MissileIndex = 0 To MaxMN           ' search an empty sprite var for new missile
    With Sprites(0, MissileIndex)
    If .Show = False Then               ' if there is a spot then do the stuff and then get out
        .XDest = CurX                   ' specify destination
        .YDest = CurY
        Firing                          ' go to firing (firing calculates some stuff and specifies starting location of missile)
        .Distance = CalDistance(.Xp, .XDest, .Yp, .YDest)       ' get distance and get angle by doing so
        .Show = True                    ' show it
        PlaySound App.Path + PlayS + "\sound\firing\shoot" & Int(2 * Rnd + 1) & ".wav", 0&, _
        SND_ASYNC Or SND_NODEFAULT Or SND_NOSTOP Or SND_NOWAIT  ' rand between 2 shoot sounds
        If RMM < 1 And MMM < 1 And LMM < 1 Then     ' if there are no missiles then speed up game
            TickNow = DieSpeed
        End If
        Exit Sub
    End If
    End With
Next
End Sub

Private Sub Firing()
On Error Resume Next                    ' sometimes if you fire a sam with powerup (2-3 split) too fast and it is destroyed, lmm,mmm,rmm will be less than -1
'*******************'
' Start the Missile '
'*******************'
With Sprites(0, MissileIndex)
    If MissileBankUse = 0 Then          ' shoot new left missile
        .Xp = 36                        ' starting position of left missile
        .Yp = 464
        LMM = LMM - 1                   ' take a missile away from bank
        If LMM = 10 Then                ' if bank has 10 missiles, then get rid of the number system and replace with missiel pictures
            LblX(0).Visible = False     ' take away the "X"
            LblLeftN.Visible = False    ' take away the label
            For Counting = 0 To 9       ' put back all the missile pictures
                ImLMN(Counting).Visible = True
            Next
        ElseIf LMM < 10 Then            ' if lower than 10, then take away a missile picture
            ImLMN(LMM).Visible = False
        Else                            ' if higher than 10, then put the remaining number on label
            LblLeftN.Caption = LMM
        End If
    
    ElseIf MissileBankUse = 1 Then      ' shoot new middle missile, same concept as above
        .Xp = 484
        .Yp = 464
        MMM = MMM - 1
        If MMM = 10 Then
            LblX(1).Visible = False
            LblMidN.Visible = False
            For Counting = 0 To 9
                ImMMN(Counting).Visible = True
            Next
        ElseIf MMM < 10 Then
            ImMMN(MMM).Visible = False
        Else
            LblMidN.Caption = MMM
        End If
        
    ElseIf MissileBankUse = 2 Then      ' shoot new right missile
        .Xp = 930
        .Yp = 464
        RMM = RMM - 1
        If RMM = 10 Then
            LblX(2).Visible = False
            LblRightN.Visible = False
            For Counting = 0 To 9
                ImRMN(Counting).Visible = True
            Next
        ElseIf RMM < 10 Then
            ImRMN(RMM).Visible = False
        Else
            LblRightN.Caption = RMM
        End If
        
    End If
    
    ' determines if missile is going left or right or straight up
    If .Xp - .XDest >= -2 And .Xp - .XDest <= 2 Then    ' if it is a little off from going straight up, still make it go striaght up
        .Direction = 1                  ' it's going from middle
    ElseIf .XDest - .Xp > 0 Then        ' missile is on the left
        .Direction = 0                  ' missile from left
    ElseIf .Xp - .XDest > 0 Then        ' missile is on the right
        .Direction = 2                  ' from right
    End If
End With
End Sub

Private Sub MissileMove()

'************************'
' how missiles are moved '
'************************'
For MN = 0 To MaxMN
    With Sprites(0, MN)
    If .Show = True Then                ' if it's shown, then move it
        If .Distance - MissileSpeed <= 0 Then   ' if it's going to hit the destination then
            .Distance = 0                       ' distance = 0
            .Show = False                       ' don't show
            Call MissileDie(0, .XDest, .YDest)  ' explosion on point .xdest, .ydest
        Else                            ' if it has not reached the destination then
            .Distance = .Distance - MissileSpeed    ' advance movement
            If .Direction = 1 Then              'straight up
                .Yp = .YDest + .Distance        ' just change the y coord
            ElseIf .Direction = 0 Then          ' from left
                .Xp = .XDest - Sin(.MissileAngle) * .Distance - .MAFixX ' get the x by using sin and angle with distance
            ElseIf .Direction = 2 Then          ' from right
                .Xp = Sin(.MissileAngle) * .Distance + .XDest - .MAFixX ' same concept as y
            End If
            .Yp = Cos(.MissileAngle) * .Distance + .YDest   ' y is always calculated this way no matter what the direction is
        End If
    End If
    End With
Next MN

End Sub

Private Sub ENewM(Spliting As Boolean, Xsource%, Ysource%)  ' new enemy missile
Randomize
With Sprites(7, EnemyNum)
    If Spliting = False Then                        ' if it's making a completely new missile, then
        .Xp = (PicMain.ScaleWidth - 20) * Rnd + 10  ' randomize the x coord of the top for new missile
    Else                                            ' if it's splitting then
        .Xp = Xsource                               ' the x coord will be the last position of that split missile
    End If
    ' line characteristics
    .Yp = Ysource                                   ' starting location is the y source
    .Width = .Xp                                    ' .width = the current x2, used because that was a free property, and i didn't feel like making another property, making a new property means all other sprites will have a useless property
    .Height = .Yp                                   ' .height = current y2
    .Show = True
    .Speed = (ESpeedMax - ESpeedMin) * Rnd + ESpeedMin      ' rand speed of enemy missile is espeed
    .XDest = (PicMain.ScaleWidth - 10) * Rnd + 5    ' randomize the destination of the missiles
    .Distance = 0                                   ' distance right now is 0 because it has not moved yet, it will increase by enemy missile speed
    'calculations
    If .Xp - .XDest = 0 Then                        ' if going straight down, this will speed up the game
        .Direction = 1
    ElseIf .XDest - .Xp > 0 Then                    ' going from left
        .MissileAngle = Atn((.XDest - .Xp) / (PicMain.ScaleHeight - .Yp)) ' calculate angle
        .Direction = 0
    ElseIf .Xp - .XDest > 0 Then                    ' go from  right
        .MissileAngle = Atn((.Xp - .XDest) / (PicMain.ScaleHeight - .Yp))
        .Direction = 2
    End If
End With
End Sub

Private Sub EMSplit()
If MaxEM - EOnSnum - 1 < 3 Then Exit Sub    ' if there are no more or too little free lines, then exit sub and forget about spliting
For Counting = 1 To MaxEM                   ' keep looping until it finds a missile able to split
    Randomize
    SplitEMN = MaxEM * Rnd                  ' rand between maximum enemy missle and 0
    If Sprites(7, SplitEMN).Show = True And Sprites(7, SplitEMN).Height < 400 Then
          ' if that missile is on screen and not too low then split it
        Do
            SplitNum = 3 * Rnd + 3                          ' split 3-6 missiles
            If MaxEM - EOnSnum - 1 >= SplitNum Then Exit Do ' if there are unused lines then do split
        Loop                                                ' keep randomizing # until the number is low enough to split
        For SplitCount = 1 To SplitNum                      ' make SplitNum number of missiles
            For EnemyNum = 0 To MaxEM                       ' searchs for an empty spot
                With Sprites(7, EnemyNum)
                If .Show = False Then
                    Call ENewM(True, Sprites(7, SplitEMN).Width, Sprites(7, SplitEMN).Height)
                        ' remember that .width is x2, .height is y2, and we have the spliting missiles as source xy
                    Exit For                                ' exit the EnemyNum "for loop"
                End If
                End With
            Next EnemyNum
        Next SplitCount
        Exit For                                            ' exit when done
    End If
Next

Sprites(7, SplitEMN).Show = False ' original missile disappears
End Sub

Private Sub EMMove()                        ' enemy missile movement
For EMM = 0 To MaxEM
    With Sprites(7, EMM)
    If .Show = True Then                    ' if the line is on screen then move it
        If .Height >= 464 Then              ' if the y2 coord is on or below the missile launcher's height then
            If CityDis(.Width, .Height) = True Or .Height >= PicMain.ScaleHeight Then    ' check if it hit a city
                .Show = False               ' if city was hit or hit the ground, then dont' show
                GoTo SkipMove               ' skip movement
            End If
        End If
        
        .Distance = .Distance + .Speed      ' add distance
        If .Direction = 1 Then              'middile
            .Height = .Height + .Speed
        ElseIf .Direction = 0 Then          'left
            .Width = Sin(.MissileAngle) * .Distance + .Xp   ' same concept as missile movement
        ElseIf .Direction = 2 Then          'right
            .Width = .Xp - Sin(.MissileAngle) * .Distance
        End If
        .Height = .Yp + Cos(.MissileAngle) * .Distance
    End If
SkipMove:     ' used if just destroyed a structure, skips the movement
   End With
Next
End Sub

Private Sub BomberMove()                    ' how bomber moves
Randomize
With Sprites(1, BType)
    If .Show = False Then Exit Sub          ' if it's not shown, then exit this sub
    If .Direction = 0 Then                  ' if the bomber is going from left to right
        .Xp = .Xp + .Speed                  ' advance bomber
        If HitDetect(.Xp + .Width, .Yp + .Height \ 2) = True Then GoTo DieCheck     ' must hit nose cone, if hit, check plane
        If .Xp > PicMain.ScaleWidth Then GoTo NewBomber     ' if bomber flied all teh way across, then make new bomber
    ElseIf .Direction = 1 Then              ' if bomber is going from right to left
        .Xp = .Xp - .Speed                  ' advance bomber,
        If HitDetect(.Xp, .Yp + .Height \ 2) = True Then GoTo DieCheck  ' same concept
        If .Xp + .Width < 0 Then GoTo NewBomber
    End If
    If BType = 3 Or BType = 10 Then Exit Sub    ' if civilian aircraft, then exit, meaning no missiles or bombs dropped
    .EventCount = .EventCount + 1           ' measures "time" passed by, using system ticks would be a little longer so i used this simple method
    If .EventCount >= .Frames Then          ' if time is up to drop then go
        .EventCount = 0                     ' reset time now = 0
        .Frames = (BMaxDropT - BMinDropT) * Rnd + BMinDropT   ' re-random the drop time
        GoTo DropLoad1                      ' drop
    End If
End With
Exit Sub

DieCheck:                                   ' check dead plane
If BType = 3 Or BType = 10 Then             ' checks if it's a civilian plane
    Score = Score - PCiv                    ' del points
Else                                        ' if its not civilian then
    Score = Score + PBomber                 ' add points
End If

' decide an explosion, small, medium or big explosion, and make explosion sound
PlaySound App.Path & PlayS + "\sound\explode\explodespecial.wav", 0&, _
    SND_ASYNC Or SND_NOSTOP Or SND_NOWAIT Or SND_NODEFAULT
Randomize
ExType = 5                          ' first say all jet explosions are small
Select Case BType
    Case 2, 4, 11, 12
        ExType = 4                  ' medium explosion size
    Case 1, 3, 5, 7, 10                    ' big explosion size
        ExType = 13
End Select

'ExType = (1 * Rnd + 4)             ' rand a explosion 4 or 5, (not used)
With Sprites(ExType, 0)                     ' make explosion
    .Show = True                            ' show it
    .EventCount = 0                         ' event = 0
    .Speed = Sprites(1, BType).Speed * 1.2
    .Direction = Sprites(1, BType).Direction
    .Yp = (Sprites(1, BType).Yp + Sprites(1, BType).Height \ 2) - (.Height \ 2)
            ' get the middle of bomber - half height of explsion = top of gif
    .Xp = (Sprites(1, BType).Xp + Sprites(1, BType).Width \ 2) - (.Width \ 2) ' same method as above
End With
' when finished with checking plane death, move onto making a new bomber,
NewBomber:
With Sprites(1, BType)
    .Show = False                           ' bomber dies, don't show any more
    If LblTRemain.Caption <= 0 Then Exit Sub    ' if game timer is 0 then don't make new bomber
    TimerBomber.Interval = (5 * Rnd + 2) * 1000
    TimerBomber.Enabled = True
End With
Exit Sub

DropLoad1:                                  ' drop bombs or others
With Sprites(1, BType)
.EventCount = 0                             ' reset count = 0
.Frames = 64 * Rnd + 36                     ' re-rand the next drop load time
    If BType = 0 Or BType = 2 Or BType = 6 Or BType = 7 Or BType = 8 Then ' if bomber drops missiles, then drop split missile
        If MaxEM - EOnSnum - 1 < .FrIndex Then Exit Sub     ' if there are no more or too little free lines, then exit sub and forget about spliting
        For SplitCount = 1 To .FrIndex                      ' make SplitNum number of missiles
            For EnemyNum = 0 To MaxEM                       ' searchs for an empty spot
                If Sprites(7, EnemyNum).Show = False Then   ' if there is an empty spot then drop missiles
                    Call ENewM(True, (.Xp + (.Width \ 2)), .Yp + .Height)   ' drop at belly of plane and mid of plane
                    PlaySound App.Path & PlayS + "\sound\Bomber\jetdrop.wav", 0&, _
                        SND_ASYNC Or SND_NOSTOP Or SND_NOWAIT Or SND_NODEFAULT
                    Exit For                                ' exit the EnemyNum for loop
                End If
            Next EnemyNum
        Next SplitCount
        Exit Sub                                            ' exit sub because plane does not have bombs, only missiles
    End If
    
    For Counting = 1 To .FrIndex                            ' drop bombs if missile part was skipped
        For BombSearch = 1 To MaxB                          ' search for empty place for bomb
            If Sprites(2, BombSearch).Show = False Then     ' if there is an empty space then use that
                Sprites(2, BombSearch).Xp = .Xp + (.Width \ 2)  ' specify new locations for bomb
                Sprites(2, BombSearch).Yp = .Yp + .Height
                Randomize
                Sprites(2, BombSearch).Speed = -2 * Rnd + BombSpeed
                If Sprites(2, BombSearch).Speed < 1 Then Sprites(2, BombSearch).Speed = 1
                Sprites(2, BombSearch).Show = True
                PlaySound App.Path & PlayS + "\sound\Bomber\bombdrop.wav", 0&, _
                    SND_ASYNC Or SND_NOSTOP Or SND_NOWAIT Or SND_NODEFAULT
                Exit For                ' exit the seach empty space for loop when a empty place for bomb has been found and filled with values, now it will search for a empty space for the 2nd bomb to be dropped
            End If
        Next
    Next
End With
End Sub

Private Sub BombMove()                                                  ' bomb move
Randomize                                                               ' bomb will randomize where it will move next so it is very unpredictable for the player
For BombForLoop = 1 To MaxB
With Sprites(2, BombForLoop)
    If .Show = True Then                                                ' if bomb is on screen then
        .Yp = .Yp + .Speed 'BombSpeed                                           ' the y position of bomb
        .Direction = 1 * Rnd                                            ' the play can shoot both sides to ensure it's destruction or take chances to save missiles
        If .Direction = 0 Then                                          ' if going left, then
            .Xp = .Xp - .Speed * 4 ' BombSpeed * 4
            If .Xp < 0 Then .Xp = .Xp + .Speed * 8 ' BombSpeed * 8                   ' if it's out of the screent then bring it back
        ElseIf .Direction = 1 Then                                      ' if going right
            .Xp = .Xp + .Speed * 4 ' BombSpeed * 4
            If .Xp > PicMain.ScaleWidth Then .Xp = .Xp - .Speed * 8 ' BombSpeed * 8  ' if it's out of the screen then bring it back
        End If
        
        ' hit detect
        If HitDetect(.Xp + .Width \ 2, .Yp + .Height \ 2) = True Then   ' if hit the middile then
            .Show = False
            Score = Score + PBomb                                       ' 40 points for each bomb destroyed
            Sprites(SBombExN, BombForLoop).Show = True
            Sprites(SBombExN, BombForLoop).Xp = (.Xp + .Width \ 2) - Sprites(SBombExN, BombForLoop).Width \ 2
            Sprites(SBombExN, BombForLoop).Yp = (.Yp + .Height \ 2) - Sprites(SBombExN, BombForLoop).Height \ 2
        ElseIf .Yp > 464 Then                                           ' when it's low enough, check if it hit any structures
            If CityDis(.Xp + .Width \ 2, .Yp + .Height \ 2) = True Then ' if hit city then don't show it
                .Show = False
            End If
        End If
        If .Yp > PicMain.ScaleHeight Then
            .Show = False                 ' if it hits the bottom then die
            Sprites(SBombExN, BombForLoop).Show = True
            Sprites(SBombExN, BombForLoop).Xp = (.Xp + .Width \ 2) - Sprites(SBombExN, BombForLoop).Width \ 2
            Sprites(SBombExN, BombForLoop).Yp = (.Yp + .Height \ 2) - Sprites(SBombExN, BombForLoop).Height \ 2 - 12
        End If
    End If
End With
Next
End Sub

Private Sub Bonus()                         ' bonus stuff
With Sprites(6, BonusType)
    If .Show = False Then Exit Sub          ' if not shown then don't bother
    If .EventCount > .Frames Then           ' if time for display is up then make a new bonus
        .EventCount = 0
        GoTo NewBonus
    End If
    If HitDetect(.Xp + .Width \ 2, .Yp + .Height \ 2) = True Then       ' if hit then check which bonus it got
        Sprites(SBonusExN, 0).Show = True
        Sprites(SBonusExN, 0).Xp = (.Xp + .Width \ 2) - Sprites(SBonusExN, 0).Width / 2
        Sprites(SBonusExN, 0).Yp = (.Yp + .Height \ 2) - Sprites(SBonusExN, 0).Height / 2
        
        .Show = False                        ' this must be decleared now otherwise other events might trigger it again
        Select Case BonusType
        Case 0                              ' add 100 points
            Score = Score + 100
        Case 1                              ' add 200 points
            Score = Score + 200
        Case 2                              ' add 5 missiles to the LAST BANK FIRED, NOT WHERE THE MISSILE WAS FIRED FROM
            Call MoreM(MissileBankUse, 5)
        Case 3                              ' - 1000 points (skull)
            Score = Score - 1000
        Case 4                              ' add 10 missiles
            Call MoreM(MissileBankUse, 10)
        Case 5                              ' instant missile
        
            If MissileBankUse = 0 Then      ' if using bank
                LMspecType = 1              ' left will have instant, the load the pic to indicate it
                ImLSpec.Picture = LoadPicture(App.Path + "\graphics\special\instant.gif")
            ElseIf MissileBankUse = 1 Then
                MMspecType = 1              ' same concept, middle
                ImMSpec.Picture = LoadPicture(App.Path + "\graphics\special\instant.gif")
            ElseIf MissileBankUse = 2 Then
                RMspectype = 1              ' right
                ImRSpec.Picture = LoadPicture(App.Path + "\graphics\special\instant.gif")
            End If
        Case 6                              ' add 5 missiles to each bank
            Call MoreM(0, 5)
            Call MoreM(1, 5)
            Call MoreM(2, 5)
        Case 7                              ' 2 split missile
            If MissileBankUse = 0 Then
                LMspecType = 2
                ImLSpec.Picture = LoadPicture(App.Path + "\graphics\special\2split.gif")
            ElseIf MissileBankUse = 1 Then
                MMspecType = 2
                ImMSpec.Picture = LoadPicture(App.Path + "\graphics\special\2split.gif")
            ElseIf MissileBankUse = 2 Then
                RMspectype = 2
                ImRSpec.Picture = LoadPicture(App.Path + "\graphics\special\2split.gif")
            End If
        Case 8                              ' add 500 points
            Score = Score + 500
        Case 9                              ' 3 split missile
            If MissileBankUse = 0 Then
                LMspecType = 3
                ImLSpec.Picture = LoadPicture(App.Path + "\graphics\special\3split.gif")
            ElseIf MissileBankUse = 1 Then
                MMspecType = 3
                ImMSpec.Picture = LoadPicture(App.Path + "\graphics\special\3split.gif")
            ElseIf MissileBankUse = 2 Then
                RMspectype = 3
                ImRSpec.Picture = LoadPicture(App.Path + "\graphics\special\3split.gif")
            End If
        End Select
        GoTo NewBonus                       ' if bonus is hit, then go to make a new bonus
    End If
    Exit Sub

NewBonus:
    .Show = False                           ' make the old bonus invis and make a new bonus, remeber that even if the game time is gone, we still want the game to release bonuses,
    TimerBonus.Interval = (3 * Rnd + 3) * 1000
    TimerBonus.Enabled = True
End With
End Sub

Private Sub MoreM(AddMBank%, AddMN%)    ' add more missiles if hit the bonus/special
' addmbank = specify which bank to add more missiles to     addmn = add how many missiles

If AddMBank = 0 And LMM >= 0 Then                           ' add to left, you can still add missiles to banks that are empty, you cannot add more missiles if that bank is destoryed
    LMM = LMM + AddMN                                       ' add the missiles
    If LMM > 10 Then                                        ' if there are more than 10 missiles then show in numeric
        For Counting = 1 To 9                               ' same concept as sub firing stuff
            ImLMN(Counting).Visible = False
        Next
        LblX(0).Visible = True
        LblLeftN.Caption = LMM
        LblLeftN.Visible = True
    Else                                                    ' if not displaying in numeric, then put the added missiles on screen
        For Counting = 0 To LMM - 1
            ImLMN(Counting).Visible = True
        Next
    End If
ElseIf AddMBank = 1 And MMM >= 0 Then                       ' add to middile
    MMM = MMM + AddMN                                       ' add new number of missiles
    If MMM > 10 Then                                        ' if it's too hight to display all, then put numbers
        For Counting = 1 To 9
            ImMMN(Counting).Visible = False
        Next
        LblX(1).Visible = True
        LblMidN.Caption = MMM
        LblMidN.Visible = True
    Else
        For Counting = 0 To MMM - 1
            ImMMN(Counting).Visible = True
        Next
    End If
ElseIf AddMBank = 2 And RMM >= 0 Then                       ' add to right
    RMM = RMM + AddMN
    If RMM > 10 Then
        For Counting = 1 To 9
            ImRMN(Counting).Visible = False
        Next
        LblX(2).Visible = True
        LblRightN.Caption = RMM
        LblRightN.Visible = True
    Else
        For Counting = 0 To RMM - 1
            ImRMN(Counting).Visible = True
        Next
    End If
End If
End Sub

Public Sub EndSeq()                                         ' end the game
StopMusic                                                   ' stop any music playing
GamePlay = 4                                                ' game is now waiting

If LevelNum = 100 Then                                  ' if finished game then
    GoTo CheckScore                                     ' go and display rank
End If

If CityN > 0 Or CityReserve > 0 Then                        ' if there are cities standing then the player has survived
    PlayMusic "victory.wav"
    LevelNum = LevelNum + 1                                 ' advance level
    PicBottom.Picture = LoadPicture(App.Path + "\graphics\desktop\bottom.jpg")  ' the picture must be loaded before closing the screen
    CloseScreen                                             ' close the screen
    Briefings (1)                                           ' mode is in debriefing
Else                                                        ' losing sequence
    PicBottom.Picture = LoadPicture(App.Path + "\graphics\desktop\bottomblue.jpg")
    PlayMusic "defeat.wav"
    CloseScreen                                             ' close the screen
CheckScore:
    Main.Enabled = False                                    ' respecify to false just in case
    PauseGame                                               ' enable all the stuff (menus)
    If Cheat = False And Callsign <> "Speed Changed" Then   ' if didn't cheat
        If DiffMode = 1 Then       ' if played at medium, give 5000 more points
            MsgBox "You have been awarded with 5000 more points for playing this game in Elite mode", vbInformation, "Elite"
            Score = Score + 5000
        ElseIf DiffMode = 2 Then
            MsgBox "You have been awarded with 10000 more points for playing this game in Impossible mode", vbInformation, "Impossible"
            Score = Score + 10000
        End If
        Ranking = HighScoreRank(Callsign, Score)            ' get the rank of player
        Main.Enabled = True
        If Ranking <> -1 Then                               ' if on the highscores, then display:
            MsgBox "Congratulations! You placed " & Ranking & "th. on the Kill Board with " & _
            Score & " Points" & vbCrLf & "Take a look at the help files, you might find something interesting ", vbExclamation, "Rank"
            MnuScore1_Click                                 ' open highscores board
        Else
            MsgBox "Your Score is " & Score & vbCrLf & "You did not make it to the high score board" & _
            vbCrLf & "Take a look at the help files, you might find something interesting", vbInformation, "Score"
        End If
    Else
        MsgBox "INVALID PLAYER DETECTED! Drew Carry: ""This is where the show is made up and the points don't matter""! " _
            & vbCrLf & "Your Score is " & Score, vbInformation, "Cheater, Cheater, Cheater"       ' don't give them a place in highscores, taunt them
    End If
    MnuClose.Enabled = False                                ' cannot close game because game is already closed, this must be specified becuase unpausegame will enable this menu
    MnuNew1.Enabled = True                                  ' new game is enabled
    Main.Enabled = True
    GamePlay = -1                                           ' restate that gameplay is not playing
    If LevelNum = 22 Then Ending
End If

End Sub

Private Sub Ending()                                        ' end sequence of whole game
PlayMusic "closing.wav"
MsgBox "You have wasted your time by playing my game, but hey, all guys need violence and blood and big explosions " & _
"so.... I guess you didn't waste your time. Give me some feedback, email me at xiaohuaguo@hotmail.com" & _
vbCrLf & "By the way, check out the help files, you might find something interesting", vbInformation, "Congratulations"
MnuAbout1_Click                                             ' open about
FrmAbout.CmdCredit_Click                                    ' then open credit page
End Sub

'***********'
' Functions '
'***********'

Private Function CalDistance(X1%, X2%, Y1%, Y2%) As Integer ' get the distance, used by missile
CalDistance = Sqr((X1 - X2) ^ 2 + (Y1 - Y2) ^ 2)    ' get the distance by simple pythagorian

'**********************************************'
' THE DAMN THING WORKS IN RADIANS, ARGGGG!!!!! '
'**********************************************'
With Sprites(0, MissileIndex)
    If .Direction = 0 Then                          ' if shooting from left (destination x - source x =positive)
        .MissileAngle = Atn((X2 - X1) / (Y1 - Y2))  ' get the angle by tanget
        MAngleDeg = (.MissileAngle * 180) / Pi      ' convert from radians to degree so i can figure out which missile pic to use
    ElseIf .Direction = 2 Then                      ' if shooting from right (source x - destination x = positive)
        .MissileAngle = Atn((X1 - X2) / (Y1 - Y2))  ' angle in radians, i don't need to convert this to deg because all other functions are in rad
        MAngleDeg = (.MissileAngle * 180) / Pi
    ElseIf .Direction = 1 Then                      ' if going middle, then deg = 0
        MAngleDeg = 0                               ' if using the stright missile, then use .width \2 (middle of missile pic)
    End If
    Call MissilePic(MAngleDeg, MissileIndex, .Direction)    ' enumerate the missile so it can be animated
End With
End Function

Private Function HitDetect(x%, y%) As Boolean       ' check if any hit the explosion
HitDetect = False                                   ' make it false first
For HitFor = 0 To MaxEx                             ' checks through every possible explosion
    With Sprites(3, HitFor)
    If .Show = True Then
    
    If x >= .Xp And x <= .Xp + .Width And y >= .Yp And y <= .Yp + .Width Then   ' if it's in the square area of teh explosion then check it
            ' the line above may improve gamespeed by skipping some lines, this "line skip" will increase in number because of the 2 big for loops
        If .FrIndex <= 4 Then
            If x >= .Xp + 24 And x <= .Xp + 40 And y >= .Yp + 24 And y <= .Yp + 40 Then HitDetect = True                       ' hit is true
            Exit Function
        End If
            
        If .FrIndex > 4 And .FrIndex < 19 Then  ' if it's on screen and explosion is in the middle of exploding then (explosion must not be failing if hit wants to hit enemy)
            ' if explosion is visible and the frame/animation (explosion) is in the middle of the explosion sequence, then check if it's a hit
            If x >= .Xp + 20 And x <= .Xp + 46 And y >= .Yp And y <= .Yp + 64 Then      ' check area
                HitDetect = True                        ' hit is true
                Exit Function                           ' if hit, then no need to check other explosions
            ElseIf x >= .Xp + 10 And x <= .Xp + 55 And y >= .Yp + 10 And y <= .Yp + 55 Then
                HitDetect = True                        ' same concept
                Exit Function
            ElseIf x >= .Xp And x <= .Xp + 64 And y >= .Yp + 20 And y <= .Yp + 46 Then
                HitDetect = True
                Exit Function
            End If
        End If
    End If
    End If
    End With
Next
End Function

Private Function CityDis(x%, y%) As Boolean     ' check if city was destroyed
CityDis = False                                     ' first say it's false
If LMM <> -1 And x >= GifLMBank(SamIndex).Xp And x <= GifLMBank(SamIndex).Xp + GifLMBank(SamIndex).Width Then ' check if hit left SAM site
' if left is not destroyed (<> -1) and the location is inside the square of the city
    LMM = -1                                        ' the left is now distroyed
    GifLMBank(SamIndex).Show = False                       ' make it invis for location change, if i don't do it like this, we may see flicker because this is a pic box
    Sprites(SNukeN, 0).Show = True
    For Counting = 0 To 9                           ' get rid of remaining missiles
        ImLMN(Counting).Visible = False
    Next
    ImLSpec.Picture = LoadPicture("")               ' get rid of special, should not be invisible like the missile pictures because pictures here change and i would have to enable visible again everywhere else, so this way is easier
    LblX(0).Visible = False                         ' get rid of these too
    LblLeftN.Visible = False
    LMspecType = 0                                  ' it will lose its special
    CityDis = True                                  ' report that its destroyed
    If MMM <> -1 Then           ' if a sam fires a missile and gets destroyed, but the missile hits a powerup
        MissileBankUse = 1      ' then the powerup will go to the other sams if they are still standing
    ElseIf RMM <> -1 Then
        MissileBankUse = 2
    Else                        ' if all sams are destroyed then the powerup is lost
        MissileBankUse = -1
    End If
    PlaySound App.Path + PlayS + "\sound\explode\explodestructure.wav", 0&, _
        SND_ASYNC Or SND_NOSTOP Or SND_NOWAIT Or SND_NODEFAULT
ElseIf MMM <> -1 And x >= GifMMBank(SamIndex).Xp And x <= GifMMBank(SamIndex).Xp + GifLMBank(SamIndex).Width Then     ' check middile sam site
    MMM = -1                                        ' below has the same concept as above
    GifMMBank(SamIndex).Show = False
    Sprites(SNukeN, 1).Show = True
    For Counting = 0 To 9                           ' get rid of remaining missiles
        ImMMN(Counting).Visible = False
    Next
    ImMSpec.Picture = LoadPicture("")               ' get rid of special
    LblX(1).Visible = False
    LblMidN.Visible = False
    MMspecType = 0
    CityDis = True
    If LMM <> -1 Then
        MissileBankUse = 0
    ElseIf RMM <> -1 Then
        MissileBankUse = 2
    Else
        MissileBankUse = -1
    End If

    PlaySound App.Path + PlayS + "\sound\explode\explodestructure.wav", 0&, _
        SND_ASYNC Or SND_NOSTOP Or SND_NOWAIT Or SND_NODEFAULT
ElseIf RMM <> -1 And x >= GifRMBank(SamIndex).Xp And x <= GifRMBank(SamIndex).Xp + GifRMBank(SamIndex).Width Then
    RMM = -1
    GifRMBank(SamIndex).Show = False
    Sprites(SNukeN, 2).Show = True
    For Counting = 0 To 9
        ImRMN(Counting).Visible = False
    Next
    ImRSpec.Picture = LoadPicture("")
    LblX(2).Visible = False
    LblRightN.Visible = False
    RMspectype = 0
    CityDis = True
    If LMM <> -1 Then
        MissileBankUse = 0
    ElseIf MMM <> -1 Then
        MissileBankUse = 1
    Else
        MissileBankUse = -1
    End If

    PlaySound App.Path + PlayS + "\sound\explode\explodestructure.wav", 0&, _
        SND_ASYNC Or SND_NOSTOP Or SND_NOWAIT Or SND_NODEFAULT
Else
    For Counting = 0 To 7                           ' detect if cities are hit
        With GIFCity(Counting)
        If .FrIndex <> -1 And x >= .Xp And x <= .Xp + .Width And y >= .Yp Then    ' if city has not been destroyed and hits in the square then
            CityDis = True                          ' report it has hit
            CityN = CityN - 1                       ' there is one less city now
            .FrIndex = -1                            ' shows that city is destroyed
            .Show = False                        ' same concept as hitting sam sites
            Sprites(SSfireN, Counting).Show = True
            Sprites(SSfireN, Counting).Xp = .Xp + 4
            Sprites(SSfireN, Counting).Yp = .Yp - 12
            PlaySound App.Path + PlayS + "\sound\explode\explodestructure.wav", 0&, _
                SND_ASYNC Or SND_NOSTOP Or SND_NOWAIT Or SND_NODEFAULT
            Exit Function                           ' if it hits one, will exit function(forloop) because one enemy object cannot take down more than one
        End If
        End With
    Next
End If
If CityN = 0 And LMM = -1 And MMM = -1 And RMM = -1 Then
    LblTRemain.Caption = 0                          ' if everything is dead, then stop invasion
    TickNow = DieSpeed                              ' speed up game
End If
End Function

Private Sub MissileDie(DieType%, x%, y%)  ' dietype, 1 = enemy line die, 0 = missile die, 2 = instant explosion
If DieType = 0 Then                                 ' if missile dies then just say it doesn't exist any more
    Sprites(0, MN).Show = False
ElseIf DieType = 1 Then                             ' if enemy missile is exploding, then say it doesn't exist and add points
    Sprites(7, CHFor).Show = False
    Score = Score + PEm                             ' everytime a missile is killed, the player gets points
End If

'make explosion
For EMindex = 0 To MaxEx                            ' finds a empty explosion image container
    With Sprites(3, EMindex)
    If .Show = False Then                           ' if it's free then
        .Show = True
        .Xp = x - .Width \ 2                        ' give location for sprite display
        .Yp = y - .Height \ 2
        PlaySound App.Path + PlayS + "\sound\explode\explode" & Int(4 * Rnd + 1) & ".wav", 0&, _
            SND_ASYNC Or SND_NOSTOP Or SND_NOWAIT Or SND_NODEFAULT
        Exit Sub                                    ' exit sub when an emtpy explosion placeholder is found and numbers are entered for explosion
    End If
    End With
Next
End Sub
