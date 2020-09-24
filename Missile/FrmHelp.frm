VERSION 5.00
Begin VB.Form FrmHelp 
   BackColor       =   &H00000000&
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Help"
   ClientHeight    =   3015
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   9585
   Icon            =   "FrmHelp.frx":0000
   LinkTopic       =   "Form1"
   LockControls    =   -1  'True
   MaxButton       =   0   'False
   MinButton       =   0   'False
   Moveable        =   0   'False
   ScaleHeight     =   3015
   ScaleWidth      =   9585
   StartUpPosition =   2  'CenterScreen
   Begin VB.TextBox TxtAns 
      Appearance      =   0  'Flat
      BackColor       =   &H00000000&
      BorderStyle     =   0  'None
      ForeColor       =   &H0000FF00&
      Height          =   2730
      Left            =   3360
      Locked          =   -1  'True
      MultiLine       =   -1  'True
      ScrollBars      =   2  'Vertical
      TabIndex        =   1
      Text            =   "FrmHelp.frx":030A
      Top             =   120
      Width           =   6135
   End
   Begin VB.ListBox ListTopic 
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
      Height          =   2730
      ItemData        =   "FrmHelp.frx":0337
      Left            =   120
      List            =   "FrmHelp.frx":035F
      TabIndex        =   0
      Top             =   120
      Width           =   3015
   End
End
Attribute VB_Name = "FrmHelp"
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

Private Sub Form_Unload(Cancel As Integer)
Main.Enabled = True
Main.Show
End Sub

Private Sub ListTopic_Click()               ' just chooses and displays the information, very simple
Select Case ListTopic.ListIndex
Case 0
    TxtAns.Text = "You can use a mouse with a keyboard, or just a mouse. " & vbCrLf & _
    "The point of the game is to use your limited patriot missiles to hit your enemies " & _
    "You have cities that you must protect, if all your cities are destoryed, then you loose the game " & _
    "There are bonuses (crates) you can get that will help you on your mission, I won't tell you any specials, play the game and find out :) " _
    & vbCrLf & vbCrLf & "Note that i did not impliment the use of the 3 buttons for each SAM firing because i don't have a 3 button mouse at home."
Case 1
    TxtAns.Text = "I AM CANADIAN!, God, that commercial repeats way too many times... " & vbNewLine & _
    "I AM CHINESE! read the about section, by the way, why do you want to know? i am... not involved.. in illegal activities... ..."
Case 2
    TxtAns.Text = "Everything except for the API calls, I was too lazy and just copied them :) " & _
    "Hey! what was the meaning of that question! you think i'm lying? GRRRRR" & vbNewLine & _
    "I can prove I made this program! I've lost about 1 point on my eyesite test! There!" & vbCrLf & _
    "When you stay up all night to try to finish this program and at 5:00AM you start shaking " & _
    "because of nothing, you know your body is telling you to ""GO TO BED YOU FREAK"""
Case 3
    TxtAns.Text = "VERY! I've been at this program for a month straight, meaning i didn't play any games for one month " & _
    "and just kept working and working and working everyday until 12:00AM, well i stayed up till 4:00AM and 5:00AM on the last days " & _
    "of what was suppose to be the due day for this program"
Case 4
    TxtAns.Text = "Steal? bah! I modified them so heavy i can almost claim them mine! it's true, for my program, I had to be 5 separate groups" & vbCrLf & _
    "Graphics group - I had to search everywhere to find a base to modify those images, they took forever to find the right ones" & vbCrLf & _
    "Core programming - 3000 lines of code, thats a lot for one person... " & vbCrLf & _
    "Sound group - I had to steal these without modifying them. No i'm not a musician" & vbCrLf & _
    "Music Group - yes i ripped these too, they were from STARLANCER, you gota play that game sometime, it's great! " & vbCrLf & _
    "Form design - those command buttons didn't place them themselves! :) "
Case 5
    TxtAns.Text = "Of course it doesn't, I'm not a story teller! just be glad there is a story! and remebmer, it could happen" & vbCrLf & _
    "Acutually, i just made that story up so i can you the US planes and other stuff in my game."
Case 6
    TxtAns.Text = "Then change them if you have the source codes, all variables affecting gameplay are at the top of modfunctions.bas and main.frm. I liked my gamesettings :P " & vbNewLine & _
    "If you don't have the source codes... go to www.geocities.com/defiant_xg"
Case 7
    TxtAns.Text = "I didn't have time to try to beat it. I'm to busy"
Case 8
    TxtAns.Text = "S.A.M.s are Surface to Air Missiles" & vbNewLine & _
    "ICBMs are InterContinental Balistic Missiles, these are missiles with range greater than 5500 km"
Case 9
    TxtAns.Text = "First I used AniGif boxes for all sprites, it turned out to be slower than the speed of a dustmite" & vbCrLf & _
    "Then I changed some pictures to image boxes and it became faster but the explosions are still in anigifs" & vbCrLf & _
    "Then I found out the reason for the slowness and crashing, my anigif control boxes, i always thought that my hit detection was too slow. " & _
    "I knew the hit detect was efficient and isolated the anigif and it turned out that Anigif control cannot display more than 5 animations at once. " & _
    "If you have more than 5, all other codes will stop and all processing will be heading towards gif animation. " & vbNewLine & _
    "When there was only 1 week left to hand this in, I realized i had time to make this game playable, so i changed everything to bitblt method" & _
    "This dramatically increased gamespeed to the point where it is a playable game! I must thank Doug Puckett for his demos, I did not competely use his method " & _
    "of animation, i had to change it for my needs, but the concept was the same. His demo really made me understand how to use bitblt to make sprites, he probably didn't " & _
    "invent the method but his demo was very very helpful, although i wish he would have put a little more comments in :)"
Case 10
    TxtAns.Text = "Message encription initialized... " & vbCrLf & _
    "'Im oging ot rwite ilke htis ofrever ):, hwy ma I rwiting ilket htis? eBcause I efel ilke ti! " & vbCrLf & _
    "nIput htese ocmmands ot oyur acllsign anme: **aWrning! nEabling hceats iwll ont lpace oyur csore no hte ihgh csores obard" & vbCrLf & _
    """I MA A OLSAR"" iwll neable 99 imssiles ofr veery elvel " & vbCrLf & _
    """OLSAR LPAYING **"" erplace ** iwth hte elvel unmber ebtween 1 nad 21" & vbCrLf & _
    """AGMESPEED **"" erplace ** iwth a unmber ebtween 0 nad 99, hte msaller hte unmber hte afster hte agme lpay" & vbCrLf & _
    "sue agmespeed fi oyur ocmputer si oto lsow ro oto afst ofr hte agme, ohwever, afst ocmputers hsould ahve on rpoblems iwth" & _
    "ym rpogram ebcause ti ocunts itcks" & vbCrLf & _
    "End message encription" & vbCrLf & _
    "I hope that descouraged you to use cheat codes! Besides, you can only use one cheat at a time, you can't combine cheats." & vbNewLine & _
    "Geez that was some really poor encription method... If you didn't get that... then you ... don't deserve the cheat codes :)"
Case 11
    TxtAns.Text = "Q: I can't Play this game!" & vbCrLf & _
    "A: Did you turn on your computer? " & vbCrLf & vbCrLf & _
    "Q: All I see is black!" & vbCrLf & _
    "A: Did you turn on your monitor? " & vbCrLf & vbCrLf & _
    "Q: I cant turn on my computer or my monitor" & vbCrLf & _
    "A: Do you have your computer switch at the back turned on?" & vbCrLf & vbCrLf & _
    "Q: I can't find the switch at the back of my computer to turn on the computer" & vbCrLf & _
    "A: It's at the back... Trust me" & vbCrLf & vbCrLf & _
    "Q: Ok, i've turned on the switch and still nothing" & vbCrLf & _
    "A: Do you have the power cables pluged in?" & vbCrLf & vbCrLf & _
    "Q: I plugged the cables in and still nothing" & vbCrLf & _
    "A: Now try pushing the power button at the front" & vbCrLf & vbCrLf & _
    "Q: Yay! the computer started, what the... my keyboard and mouse doesn't work" & vbCrLf & _
    "A: Try pluggin in the cables for the keyboard and mouse... plug them into the back of the computer" & vbCrLf & vbCrLf & _
    "Q: Yay! everything works, thanks" & vbCrLf & _
    "A: If you took my answers seriously then i feel sorry for you... don't talk to me" & vbCrLf & vbCrLf & _
    "Q: How do i change back my original cursor?" & vbCrLf & _
    "A: Go to Control panel \ mouse \          If you restart, the cursor will automatically be back to normal"
End Select
End Sub
