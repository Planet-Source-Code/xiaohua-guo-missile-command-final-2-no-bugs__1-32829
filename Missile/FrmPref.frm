VERSION 5.00
Begin VB.Form FrmPref 
   BackColor       =   &H00000000&
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Preferences"
   ClientHeight    =   2940
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   5910
   ControlBox      =   0   'False
   LinkTopic       =   "Form1"
   LockControls    =   -1  'True
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   2940
   ScaleWidth      =   5910
   StartUpPosition =   2  'CenterScreen
   Begin VB.CheckBox AutoClose 
      Appearance      =   0  'Flat
      BackColor       =   &H00000000&
      Caption         =   "Auto close the briefing text after 1 second"
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000C000&
      Height          =   495
      Left            =   240
      MaskColor       =   &H00000000&
      TabIndex        =   6
      Top             =   1800
      Width           =   3735
   End
   Begin VB.TextBox Text1 
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
      ForeColor       =   &H0000C000&
      Height          =   285
      Left            =   4200
      TabIndex        =   5
      Top             =   2400
      Width           =   615
   End
   Begin VB.CheckBox NoMsg 
      Appearance      =   0  'Flat
      BackColor       =   &H00000000&
      Caption         =   "Do not show any warning messages"
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000C000&
      Height          =   495
      Left            =   240
      TabIndex        =   2
      ToolTipText     =   "don't show any warning messages"
      Top             =   1080
      Width           =   3735
   End
   Begin VB.CheckBox PDiff 
      Appearance      =   0  'Flat
      BackColor       =   &H00000000&
      Caption         =   "Save Player Difficulty"
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000C000&
      Height          =   495
      Left            =   240
      TabIndex        =   1
      ToolTipText     =   "saves your difficulty"
      Top             =   600
      Width           =   2055
   End
   Begin VB.CheckBox Pname 
      Appearance      =   0  'Flat
      BackColor       =   &H00000000&
      Caption         =   "Save Player Name"
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000C000&
      Height          =   495
      Left            =   240
      TabIndex        =   0
      ToolTipText     =   "Save players name so next time you play, your name will automatcially be entered"
      Top             =   120
      Width           =   1935
   End
   Begin VB.Label Tspeed 
      Appearance      =   0  'Flat
      BackColor       =   &H00000000&
      Caption         =   "Scrolling Text Speed (0.0 - 50.0 : smaller = faster)"
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000C000&
      Height          =   255
      Left            =   240
      TabIndex        =   4
      Top             =   2400
      Width           =   4095
   End
   Begin VB.Label Label1 
      Appearance      =   0  'Flat
      BackColor       =   &H00000000&
      Caption         =   "example: ""Are you sure you want to exit."
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000C000&
      Height          =   375
      Left            =   480
      TabIndex        =   3
      Top             =   1560
      Width           =   3255
   End
End
Attribute VB_Name = "FrmPref"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

