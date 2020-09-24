VERSION 5.00
Begin VB.Form FrmSprites 
   Appearance      =   0  'Flat
   AutoRedraw      =   -1  'True
   BackColor       =   &H80000001&
   BorderStyle     =   0  'None
   Caption         =   "Sprite1"
   ClientHeight    =   11115
   ClientLeft      =   0
   ClientTop       =   0
   ClientWidth     =   15240
   ClipControls    =   0   'False
   ControlBox      =   0   'False
   DrawStyle       =   5  'Transparent
   LinkTopic       =   "Form1"
   LockControls    =   -1  'True
   MaxButton       =   0   'False
   MinButton       =   0   'False
   NegotiateMenus  =   0   'False
   PaletteMode     =   2  'Custom
   ScaleHeight     =   11115
   ScaleWidth      =   15240
   ShowInTaskbar   =   0   'False
   Visible         =   0   'False
   Begin VB.PictureBox GifRMBank 
      Appearance      =   0  'Flat
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      BackColor       =   &H80000005&
      BorderStyle     =   0  'None
      ForeColor       =   &H80000008&
      Height          =   1230
      Index           =   1
      Left            =   7080
      Picture         =   "FrmSprites.frx":0000
      ScaleHeight     =   82
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   41
      TabIndex        =   47
      Top             =   2880
      Width           =   615
   End
   Begin VB.PictureBox GifRMBank 
      Appearance      =   0  'Flat
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      BackColor       =   &H80000005&
      BorderStyle     =   0  'None
      ForeColor       =   &H80000008&
      Height          =   1230
      Index           =   0
      Left            =   7080
      Picture         =   "FrmSprites.frx":125A
      ScaleHeight     =   82
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   41
      TabIndex        =   46
      Top             =   1560
      Width           =   615
   End
   Begin VB.PictureBox GifMMBank 
      Appearance      =   0  'Flat
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      BackColor       =   &H80000005&
      BorderStyle     =   0  'None
      ForeColor       =   &H80000008&
      Height          =   1230
      Index           =   1
      Left            =   6360
      Picture         =   "FrmSprites.frx":24B4
      ScaleHeight     =   82
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   41
      TabIndex        =   45
      Top             =   2880
      Width           =   615
   End
   Begin VB.PictureBox GifMMBank 
      Appearance      =   0  'Flat
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      BackColor       =   &H80000005&
      BorderStyle     =   0  'None
      ForeColor       =   &H80000008&
      Height          =   1230
      Index           =   0
      Left            =   6360
      Picture         =   "FrmSprites.frx":370E
      ScaleHeight     =   82
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   41
      TabIndex        =   44
      Top             =   1560
      Width           =   615
   End
   Begin VB.PictureBox GifLMBank 
      Appearance      =   0  'Flat
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      BackColor       =   &H80000005&
      BorderStyle     =   0  'None
      ForeColor       =   &H80000008&
      Height          =   1230
      Index           =   1
      Left            =   5640
      Picture         =   "FrmSprites.frx":4968
      ScaleHeight     =   82
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   41
      TabIndex        =   43
      Top             =   2880
      Width           =   615
   End
   Begin VB.PictureBox GifLMBank 
      Appearance      =   0  'Flat
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      BackColor       =   &H80000005&
      BorderStyle     =   0  'None
      ForeColor       =   &H80000008&
      Height          =   1230
      Index           =   0
      Left            =   5640
      Picture         =   "FrmSprites.frx":5BC2
      ScaleHeight     =   82
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   41
      TabIndex        =   42
      Top             =   1560
      Width           =   615
   End
   Begin VB.PictureBox Sprite 
      Appearance      =   0  'Flat
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      BackColor       =   &H80000005&
      BorderStyle     =   0  'None
      ForeColor       =   &H80000008&
      Height          =   495
      Index           =   8
      Left            =   5520
      Picture         =   "FrmSprites.frx":6E1C
      ScaleHeight     =   33
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   825
      TabIndex        =   37
      Top             =   0
      Width           =   12375
   End
   Begin VB.PictureBox Target 
      Appearance      =   0  'Flat
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      BackColor       =   &H80000005&
      BorderStyle     =   0  'None
      ForeColor       =   &H80000008&
      Height          =   960
      Left            =   1920
      Picture         =   "FrmSprites.frx":DD1A
      ScaleHeight     =   64
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   32
      TabIndex        =   34
      Top             =   120
      Width           =   480
   End
   Begin VB.PictureBox Sprite 
      Appearance      =   0  'Flat
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      BackColor       =   &H80000005&
      BorderStyle     =   0  'None
      ForeColor       =   &H80000008&
      Height          =   1230
      Index           =   10
      Left            =   0
      Picture         =   "FrmSprites.frx":F55C
      ScaleHeight     =   82
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   615
      TabIndex        =   38
      Top             =   5400
      Width           =   9225
   End
   Begin VB.PictureBox Sprite 
      Appearance      =   0  'Flat
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      BackColor       =   &H80000005&
      BorderStyle     =   0  'None
      ForeColor       =   &H80000008&
      Height          =   1920
      Index           =   14
      Left            =   8040
      Picture         =   "FrmSprites.frx":1BEEE
      ScaleHeight     =   128
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   576
      TabIndex        =   40
      Top             =   5280
      Width           =   8640
   End
   Begin VB.PictureBox Sprite 
      Appearance      =   0  'Flat
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      BackColor       =   &H80000005&
      BorderStyle     =   0  'None
      ForeColor       =   &H80000008&
      Height          =   2250
      Index           =   12
      Left            =   0
      Picture         =   "FrmSprites.frx":2E330
      ScaleHeight     =   150
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   1638
      TabIndex        =   36
      Top             =   4320
      Width           =   24570
   End
   Begin VB.PictureBox Sprite 
      Appearance      =   0  'Flat
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      BackColor       =   &H80000005&
      BorderStyle     =   0  'None
      ForeColor       =   &H80000008&
      Height          =   1410
      Index           =   11
      Left            =   0
      Picture         =   "FrmSprites.frx":6A862
      ScaleHeight     =   94
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   936
      TabIndex        =   35
      Top             =   3720
      Width           =   14040
   End
   Begin VB.PictureBox Sprite 
      Appearance      =   0  'Flat
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      BackColor       =   &H80000005&
      BorderStyle     =   0  'None
      ForeColor       =   &H80000008&
      Height          =   3000
      Index           =   5
      Left            =   0
      Picture         =   "FrmSprites.frx":80454
      ScaleHeight     =   200
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   1207
      TabIndex        =   4
      Top             =   2760
      Width           =   18105
   End
   Begin VB.PictureBox Sprite 
      Appearance      =   0  'Flat
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      BackColor       =   &H80000005&
      BorderStyle     =   0  'None
      ForeColor       =   &H80000008&
      Height          =   4020
      Index           =   4
      Left            =   0
      Picture         =   "FrmSprites.frx":BB856
      ScaleHeight     =   268
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   972
      TabIndex        =   3
      Top             =   1560
      Width           =   14580
   End
   Begin VB.PictureBox Sprite 
      Appearance      =   0  'Flat
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      BackColor       =   &H80000005&
      BorderStyle     =   0  'None
      ClipControls    =   0   'False
      ForeColor       =   &H80000008&
      Height          =   1920
      Index           =   3
      Left            =   -120
      Picture         =   "FrmSprites.frx":FB628
      ScaleHeight     =   128
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   1536
      TabIndex        =   0
      Top             =   840
      Width           =   23040
   End
   Begin VB.PictureBox Sprite 
      Appearance      =   0  'Flat
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      BackColor       =   &H80000005&
      BorderStyle     =   0  'None
      ForeColor       =   &H80000008&
      Height          =   2250
      Index           =   0
      Left            =   0
      Picture         =   "FrmSprites.frx":12BA6A
      ScaleHeight     =   150
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   820
      TabIndex        =   5
      Top             =   480
      Width           =   12300
   End
   Begin VB.PictureBox Sprite 
      Appearance      =   0  'Flat
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      BackColor       =   &H80000005&
      BorderStyle     =   0  'None
      ForeColor       =   &H80000008&
      Height          =   900
      Index           =   6
      Left            =   3000
      Picture         =   "FrmSprites.frx":149F24
      ScaleHeight     =   60
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   300
      TabIndex        =   33
      Top             =   0
      Width           =   4500
   End
   Begin VB.PictureBox BomberS 
      Appearance      =   0  'Flat
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      BackColor       =   &H80000005&
      BorderStyle     =   0  'None
      ForeColor       =   &H80000008&
      Height          =   960
      Index           =   25
      Left            =   13200
      Picture         =   "FrmSprites.frx":14E9B6
      ScaleHeight     =   64
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   77
      TabIndex        =   32
      Top             =   9480
      Width           =   1155
   End
   Begin VB.PictureBox BomberS 
      Appearance      =   0  'Flat
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      BackColor       =   &H80000005&
      BorderStyle     =   0  'None
      ForeColor       =   &H80000008&
      Height          =   510
      Index           =   23
      Left            =   11880
      Picture         =   "FrmSprites.frx":1501F8
      ScaleHeight     =   34
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   90
      TabIndex        =   31
      Top             =   9480
      Width           =   1350
   End
   Begin VB.PictureBox BomberS 
      Appearance      =   0  'Flat
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      BackColor       =   &H80000005&
      BorderStyle     =   0  'None
      ForeColor       =   &H80000008&
      Height          =   780
      Index           =   21
      Left            =   10080
      Picture         =   "FrmSprites.frx":151272
      ScaleHeight     =   52
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   125
      TabIndex        =   30
      Top             =   9480
      Width           =   1875
   End
   Begin VB.PictureBox BomberS 
      Appearance      =   0  'Flat
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      BackColor       =   &H80000005&
      BorderStyle     =   0  'None
      ForeColor       =   &H80000008&
      Height          =   420
      Index           =   19
      Left            =   9600
      Picture         =   "FrmSprites.frx":155F14
      ScaleHeight     =   28
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   34
      TabIndex        =   29
      Top             =   9480
      Width           =   510
   End
   Begin VB.PictureBox BomberS 
      Appearance      =   0  'Flat
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      BackColor       =   &H80000005&
      BorderStyle     =   0  'None
      ForeColor       =   &H80000008&
      Height          =   570
      Index           =   17
      Left            =   9240
      Picture         =   "FrmSprites.frx":156AB6
      ScaleHeight     =   38
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   31
      TabIndex        =   28
      Top             =   9480
      Width           =   465
   End
   Begin VB.PictureBox BomberS 
      Appearance      =   0  'Flat
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      BackColor       =   &H80000005&
      BorderStyle     =   0  'None
      ForeColor       =   &H80000008&
      Height          =   480
      Index           =   15
      Left            =   7920
      Picture         =   "FrmSprites.frx":157938
      ScaleHeight     =   32
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   89
      TabIndex        =   27
      Top             =   9480
      Width           =   1335
   End
   Begin VB.PictureBox BomberS 
      Appearance      =   0  'Flat
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      BackColor       =   &H80000005&
      BorderStyle     =   0  'None
      ForeColor       =   &H80000008&
      Height          =   840
      Index           =   13
      Left            =   7320
      Picture         =   "FrmSprites.frx":159AFA
      ScaleHeight     =   56
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   50
      TabIndex        =   26
      Top             =   9480
      Width           =   750
   End
   Begin VB.PictureBox BomberS 
      Appearance      =   0  'Flat
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      BackColor       =   &H80000005&
      BorderStyle     =   0  'None
      ForeColor       =   &H80000008&
      Height          =   540
      Index           =   11
      Left            =   6000
      Picture         =   "FrmSprites.frx":15BC7C
      ScaleHeight     =   36
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   92
      TabIndex        =   25
      Top             =   9480
      Width           =   1380
   End
   Begin VB.PictureBox BomberS 
      Appearance      =   0  'Flat
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      BackColor       =   &H80000005&
      BorderStyle     =   0  'None
      ForeColor       =   &H80000008&
      Height          =   570
      Index           =   9
      Left            =   5040
      Picture         =   "FrmSprites.frx":15E38E
      ScaleHeight     =   38
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   71
      TabIndex        =   24
      Top             =   9480
      Width           =   1065
   End
   Begin VB.PictureBox BomberS 
      Appearance      =   0  'Flat
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      BackColor       =   &H80000005&
      BorderStyle     =   0  'None
      ForeColor       =   &H80000008&
      Height          =   960
      Index           =   7
      Left            =   3360
      Picture         =   "FrmSprites.frx":1603E0
      ScaleHeight     =   64
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   116
      TabIndex        =   23
      Top             =   9480
      Width           =   1740
   End
   Begin VB.PictureBox BomberS 
      Appearance      =   0  'Flat
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      BackColor       =   &H80000005&
      BorderStyle     =   0  'None
      ForeColor       =   &H80000008&
      Height          =   720
      Index           =   5
      Left            =   2040
      Picture         =   "FrmSprites.frx":165B22
      ScaleHeight     =   48
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   88
      TabIndex        =   22
      Top             =   9360
      Width           =   1320
   End
   Begin VB.PictureBox BomberS 
      Appearance      =   0  'Flat
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      BackColor       =   &H80000005&
      BorderStyle     =   0  'None
      ForeColor       =   &H80000008&
      Height          =   840
      Index           =   3
      Left            =   840
      Picture         =   "FrmSprites.frx":168CE4
      ScaleHeight     =   56
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   80
      TabIndex        =   21
      Top             =   9360
      Width           =   1200
   End
   Begin VB.PictureBox BomberS 
      Appearance      =   0  'Flat
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      BackColor       =   &H80000005&
      BorderStyle     =   0  'None
      ForeColor       =   &H80000008&
      Height          =   600
      Index           =   1
      Left            =   120
      Picture         =   "FrmSprites.frx":16A2A6
      ScaleHeight     =   40
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   50
      TabIndex        =   20
      Top             =   9360
      Width           =   750
   End
   Begin VB.PictureBox BomberS 
      Appearance      =   0  'Flat
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      BackColor       =   &H80000005&
      BorderStyle     =   0  'None
      ForeColor       =   &H80000008&
      Height          =   960
      Index           =   24
      Left            =   13200
      Picture         =   "FrmSprites.frx":16BAA8
      ScaleHeight     =   64
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   77
      TabIndex        =   19
      Top             =   8520
      Width           =   1155
   End
   Begin VB.PictureBox BomberS 
      Appearance      =   0  'Flat
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      BackColor       =   &H80000005&
      BorderStyle     =   0  'None
      ForeColor       =   &H80000008&
      Height          =   510
      Index           =   22
      Left            =   11880
      Picture         =   "FrmSprites.frx":16D2EA
      ScaleHeight     =   34
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   90
      TabIndex        =   18
      Top             =   8520
      Width           =   1350
   End
   Begin VB.PictureBox BomberS 
      Appearance      =   0  'Flat
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      BackColor       =   &H80000005&
      BorderStyle     =   0  'None
      ForeColor       =   &H80000008&
      Height          =   780
      Index           =   20
      Left            =   10080
      Picture         =   "FrmSprites.frx":16E364
      ScaleHeight     =   52
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   125
      TabIndex        =   17
      Top             =   8520
      Width           =   1875
   End
   Begin VB.PictureBox BomberS 
      Appearance      =   0  'Flat
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      BackColor       =   &H80000005&
      BorderStyle     =   0  'None
      ForeColor       =   &H80000008&
      Height          =   420
      Index           =   18
      Left            =   9600
      Picture         =   "FrmSprites.frx":173006
      ScaleHeight     =   28
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   34
      TabIndex        =   16
      Top             =   8520
      Width           =   510
   End
   Begin VB.PictureBox BomberS 
      Appearance      =   0  'Flat
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      BackColor       =   &H80000005&
      BorderStyle     =   0  'None
      ForeColor       =   &H80000008&
      Height          =   570
      Index           =   16
      Left            =   9240
      Picture         =   "FrmSprites.frx":173BA8
      ScaleHeight     =   38
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   31
      TabIndex        =   15
      Top             =   8520
      Width           =   465
   End
   Begin VB.PictureBox BomberS 
      Appearance      =   0  'Flat
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      BackColor       =   &H80000005&
      BorderStyle     =   0  'None
      ForeColor       =   &H80000008&
      Height          =   480
      Index           =   14
      Left            =   7920
      Picture         =   "FrmSprites.frx":174A2A
      ScaleHeight     =   32
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   89
      TabIndex        =   14
      Top             =   8520
      Width           =   1335
   End
   Begin VB.PictureBox BomberS 
      Appearance      =   0  'Flat
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      BackColor       =   &H80000005&
      BorderStyle     =   0  'None
      ForeColor       =   &H80000008&
      Height          =   840
      Index           =   12
      Left            =   7320
      Picture         =   "FrmSprites.frx":176BEC
      ScaleHeight     =   56
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   50
      TabIndex        =   13
      Top             =   8520
      Width           =   750
   End
   Begin VB.PictureBox BomberS 
      Appearance      =   0  'Flat
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      BackColor       =   &H80000005&
      BorderStyle     =   0  'None
      ForeColor       =   &H80000008&
      Height          =   540
      Index           =   10
      Left            =   6000
      Picture         =   "FrmSprites.frx":178D6E
      ScaleHeight     =   36
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   92
      TabIndex        =   12
      Top             =   8520
      Width           =   1380
   End
   Begin VB.PictureBox BomberS 
      Appearance      =   0  'Flat
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      BackColor       =   &H80000005&
      BorderStyle     =   0  'None
      ForeColor       =   &H80000008&
      Height          =   570
      Index           =   8
      Left            =   5040
      Picture         =   "FrmSprites.frx":17B480
      ScaleHeight     =   38
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   71
      TabIndex        =   11
      Top             =   8520
      Width           =   1065
   End
   Begin VB.PictureBox BomberS 
      Appearance      =   0  'Flat
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      BackColor       =   &H80000005&
      BorderStyle     =   0  'None
      ForeColor       =   &H80000008&
      Height          =   960
      Index           =   6
      Left            =   3360
      Picture         =   "FrmSprites.frx":17D4D2
      ScaleHeight     =   64
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   116
      TabIndex        =   10
      Top             =   8520
      Width           =   1740
   End
   Begin VB.PictureBox BomberS 
      Appearance      =   0  'Flat
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      BackColor       =   &H80000005&
      BorderStyle     =   0  'None
      ForeColor       =   &H80000008&
      Height          =   720
      Index           =   4
      Left            =   2040
      Picture         =   "FrmSprites.frx":182C14
      ScaleHeight     =   48
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   88
      TabIndex        =   9
      Top             =   8520
      Width           =   1320
   End
   Begin VB.PictureBox BomberS 
      Appearance      =   0  'Flat
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      BackColor       =   &H80000005&
      BorderStyle     =   0  'None
      ForeColor       =   &H80000008&
      Height          =   840
      Index           =   2
      Left            =   840
      Picture         =   "FrmSprites.frx":185DD6
      ScaleHeight     =   56
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   80
      TabIndex        =   8
      Top             =   8520
      Width           =   1200
   End
   Begin VB.PictureBox BomberS 
      Appearance      =   0  'Flat
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      BackColor       =   &H80000005&
      BorderStyle     =   0  'None
      ForeColor       =   &H80000008&
      Height          =   600
      Index           =   0
      Left            =   120
      Picture         =   "FrmSprites.frx":189298
      ScaleHeight     =   40
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   50
      TabIndex        =   7
      Top             =   8520
      Width           =   750
   End
   Begin VB.PictureBox Sprite 
      Appearance      =   0  'Flat
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      BackColor       =   &H80000005&
      BorderStyle     =   0  'None
      ForeColor       =   &H80000008&
      Height          =   300
      Index           =   2
      Left            =   0
      Picture         =   "FrmSprites.frx":18AA9A
      ScaleHeight     =   20
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   200
      TabIndex        =   6
      Top             =   0
      Width           =   3000
   End
   Begin VB.PictureBox WorkScr 
      Appearance      =   0  'Flat
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   0  'None
      ForeColor       =   &H80000008&
      Height          =   735
      Left            =   960
      ScaleHeight     =   49
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   49
      TabIndex        =   1
      Top             =   120
      Width           =   735
   End
   Begin VB.PictureBox CleanScreen 
      Appearance      =   0  'Flat
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   0  'None
      ForeColor       =   &H80000008&
      Height          =   735
      Left            =   120
      ScaleHeight     =   49
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   49
      TabIndex        =   2
      Top             =   120
      Width           =   735
   End
   Begin VB.PictureBox Sprite 
      Appearance      =   0  'Flat
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      BackColor       =   &H80000005&
      BorderStyle     =   0  'None
      ForeColor       =   &H80000008&
      Height          =   3840
      Index           =   15
      Left            =   0
      Picture         =   "FrmSprites.frx":18D9BC
      ScaleHeight     =   256
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   1536
      TabIndex        =   41
      Top             =   9120
      Width           =   23040
   End
   Begin VB.PictureBox Sprite 
      Appearance      =   0  'Flat
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      BackColor       =   &H80000005&
      BorderStyle     =   0  'None
      ForeColor       =   &H80000008&
      Height          =   3840
      Index           =   13
      Left            =   -120
      Picture         =   "FrmSprites.frx":1EDDFE
      ScaleHeight     =   256
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   1920
      TabIndex        =   39
      Top             =   6840
      Width           =   28800
   End
End
Attribute VB_Name = "FrmSprites"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

