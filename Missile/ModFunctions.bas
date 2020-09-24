Attribute VB_Name = "ModFunctions"
Option Explicit
'******************************************************************************************'
' Reviewing comment reading order should be:  (it should make reading easier to understand)'
'******************************************************************************************'
' 1. read modfunctions to understand how animation works, very importatn variables and other global functions/subs
' 2. read frmnew to understand how a new game is made
' 3. read Frmconfig to understand how the keys are linked to the main game
' 4. read Main to understand how the game works
' 5. read the rest, they don't matter too much, mostly all separate and not linked to each other

'******************************************************************************'
' constants, speed variables Very important variables (not that others aren't) '
'******************************************************************************'
Public GameSpeed As Integer             ' unit = ticks
Public Const EasySpeed = 100             ' gamespeed for difficulty, ticks
Public Const MedSpeed = 66
Public Const HardSpeed = 50
Public Const DieSpeed = 1               ' when you have no missiles/ no cities, then speed up game instead of waiting

Public Const MissileReload1 = 23        ' every time the mission loads, the number of missiles on each bank is this number,
Public Const MissileReload2 = 27        ' reload 1 is the blue sams, reload 2 is the green upgraded sams
'*****!!!!!!!!!!!!!!!!!!!!! CHANGE THE SETTINGS ABOVE IF YOUR COMPUTER IS TOO SLOW OR TOO FAST TO PLAY AT THAT SETTING


Public Const Pi = 3.14159265358979      ' pi, needed for degree calculations
Public Const MissileSpeed = 40          ' speed of missile, all units related to game window are in pixels!!! (sliders are not in pixels because it's on form not game window)
Public GameTime As Integer               ' typical game lasts how long in sec
Public Const MinMHeight = 420           ' how low the missile can be fired
Public Const MaxEM = 29                 ' maximum enemy missiles limit to 30 missiles ( 0 is the first one)
Public Const MaxMN = 19                 ' maximum missile number, limit to 10
Public Const MaxEx = 29                 ' maximum explosions, limit to 20
Public Const MaxB = 19                  ' maximum amount of bombs on screen
Public EColor&                          ' color of enemy missiles
Public EOnSnum%                         ' enemy on screen number, number of enemy missiles on screen that are active

Public Const ICBMlowest = 10            ' minimm number of icbms on screen, if it reaches this low, spawn more icbms


Public SamIndex As Integer  ' show which sam site pic

Public RS$                     ' Music vars, just makes my life a little easier like this

'******************'
' GOLBAL API CALLS ' ( copied straight from other programs and MSDN, and no i did not write this part, maybe some comments, but thats it
'******************'
'*******'
' sound '
'*******'
Public Declare Function sndPlaySound Lib "winmm" Alias "sndPlaySoundA" _
    (ByVal lpszSoundName As String, ByVal uFlags As Long) As Long
Public Declare Function PlaySound& Lib "winmm.dll" Alias "PlaySoundA" _
    (ByVal lpszName As String, ByVal hModule As Long, ByVal dwFlags As Long)
Public Declare Function mciSendString Lib "winmm.dll" Alias "mciSendStringA" _
    (ByVal lpstrCommand As String, ByVal lpstrReturnString As String, _
    ByVal uReturnLength As Long, ByVal hwndCallback As Long) As Long

' Playsound flags: store in dwFlags
Public Const SND_SYNC = &H0             ' play synchronously (default) Playsound will not return until the specified sound has played.  Do not
Public Const SND_ASYNC = &H1            ' play asynchronously' Playsound returns immediately
Public Const SND_LOOP = &H8             ' loop the sound until next sndPlaySound
Public Const SND_NODEFAULT = &H2        ' Unless used, the default beep will play if the specified resource is missing
Public Const SND_NOSTOP = &H10          ' do not stop sound if another file wants to use the resources
Public Const SND_ALIAS = &H10000        ' lpszName points to a registry entry Do not use SND_RESOURSE or SND_FILENAME
Public Const SND_FILENAME = &H20000     ' Do not use with SND_RESOURCE or SND_ALIAS
Public Const SND_NOWAIT = &H2000        ' The name of a wave file.' Fail the call & do not wait for a sound device if it is otherwise unavailable
Public Const SND_RESOURCE& = &H40004    ' Use a resource file as the source Do not use with SND_ALIAS or SND_FILENAME


'*****************************'
' changes/checks display mode '
'*****************************'
Public Declare Function GetSystemMetrics Lib "user32" (ByVal nIndex As Long) As Long
Public Declare Function ChangeDisplaySettings Lib "user32" Alias "ChangeDisplaySettingsA" _
    (lpDevMode As Any, ByVal dwFlags As Long) As Long
Public Declare Function EnumDisplaySettings Lib "user32" Alias "EnumDisplaySettingsA" _
    (ByVal lpszDeviceName As Long, ByVal iModeNum As Long, lpDevMode As Any) As Boolean

Public Declare Function GetDeviceCaps Lib "gdi32" (ByVal hdc As Long, ByVal nIndex As Long) As Long
Public Declare Function CreateIC Lib "gdi32" Alias "CreateICA" (ByVal lpDriverName As String, _
    ByVal lpDeviceName As Any, ByVal lpOutput As Any, ByVal lpInitData As Any) As Long

Public Type DEVMODE                     ' most vars here are useless to me for this missile command, but it's always nice to have all of the vars
  dmDeviceName As String * 32           '* CCDEVICENAME
  dmSpecVersion As Integer
  dmDriverVersion As Integer
  dmSize As Integer
  dmDriverExtra As Integer
  dmFields As Long
  dmOrientation As Integer
  dmPaperSize As Integer
  dmPaperLength As Integer
  dmPaperWidth As Integer
  dmScale As Integer
  dmCopies As Integer
  dmDefaultSource As Integer
  dmPrintQuality As Integer
  dmColor As Integer
  dmDuplex As Integer
  dmYResolution As Integer
  dmTTOption As Integer
  dmCollate As Integer
  dmFormName As String * 32             '* CCFORMNAME
  dmUnusedPadding As Integer
  dmBitsPerPel As Integer
  dmPelsWidth As Long
  dmPelsHeight As Long
  dmDisplayFlags As Long
  dmDisplayFrequency As Long
End Type

Public DispMode As DEVMODE                             ' display mode
Public OriginalX As Integer                         ' original x resolution
Public OriginalC As Integer                         ' original colour resolution

Public DModeChangeStat As Integer                       ' display mode change message

'**************************************'
' Mouse X, Y co ordinates/ Mouse stuff '
'**************************************'
Public Declare Function GetCursorPos Lib "user32" (lpPoint As POINTAPI) As Long ' to get the pos of cursor
Type POINTAPI                           ' the type needed for getcursorpos to work
    x As Long
    y As Long
End Type
Public Declare Function SetCursorPos Lib "user32" (ByVal x As Long, ByVal y As Long) As Long
Public Declare Function ShowCursor Lib "user32" (ByVal BShow As Long) As Long
Public Declare Function ClipCursor Lib "user32" (lpRect As Any) As Long
Type RECT                               ' needed for cursor clipping
  Left As Long
  Top As Long
  Right As Long
  Bottom As Long
End Type

'********************************************'
' Graphics stuff, using GDI32.dll (hardware) '
'********************************************'
Public Declare Function DeleteDC Lib "gdi32" (ByVal hdc As Long) As Long    ' createdc and deletedc are not used in my programs, but i left them in here just incase i need them again to modify them in the future
Public Declare Function CreateDC& Lib "gdi32" Alias "CreateDCA" (ByVal lpDriverName$, ByVal lpDeviceName$, ByVal lpOutput$, ByVal lpInitData&)
Public Declare Function StretchBlt& Lib "gdi32" (ByVal hDestDC&, ByVal x&, ByVal y&, ByVal nWidth&, ByVal nHeight&, ByVal hSrcDC&, ByVal XSrc&, ByVal YSrc&, ByVal nSrcWidth&, ByVal nSrcHeight&, ByVal dwRop&)
Public Declare Function BitBlt Lib "gdi32" (ByVal hDestDC As Long, ByVal x As Long, ByVal y As Long, ByVal nWidth As Long, ByVal nHeight As Long, ByVal hSrcDC As Long, ByVal XSrc As Long, ByVal YSrc As Long, ByVal dwRop As Long) As Long
Public Declare Function SetPixelV Lib "gdi32" (ByVal hdc As Long, ByVal x As Long, ByVal y As Long, ByVal crColor As Long) As Long
Public Const SRCAND = &H8800C6
Public Const SRCCOPY = &HCC0020
Public Const SRCPAINT = &HEE0086
Public Const NOTSRCCOPY = &H330008

'*****************'
' animated cursor '
'*****************'
Public Declare Function LoadCursorFromFile Lib "user32" Alias "LoadCursorFromFileA" _
    (ByVal lpFileName As String) As Long
Public Declare Function SetSystemCursor Lib "user32" (ByVal HCur As Long, ByVal id As Long) As Long
Public Declare Function GetCursor Lib "user32" () As Long
Public Declare Function CopyIcon Lib "user32" (ByVal HCur As Long) As Long
Public Const OCR_Normal = 32512

'*************************'
' system api declarations '
'*************************'
Public Declare Sub Sleep Lib "kernel32.dll" (ByVal dwMilliseconds As Long)      ' millisecond for codes to be idle
Public Declare Function GetTickCount Lib "kernel32" () As Long                  ' get tick passed (starts from 12:00 am i think)

'***********************'
' accessing registry    '
'***********************'
Public OriginalCursorPath As String             ' saves the original cursors path so it can be restored


Public Const HKEY_CLASSES_ROOT = &H80000000
Public Const HKEY_CURRENT_USER = &H80000001
Public Const HKEY_LOCAL_MACHINE = &H80000002
Public Const HKEY_USERS = &H80000003
Public Const HKEY_PERFORMANCE_DATA = &H80000004
Public Const HKEY_CURRENT_CONFIG = &H80000005
Public Const HKEY_DYN_DATA = &H80000006
Public Const REG_SZ = 1                         ' Unicode nul terminated string
Public Const REG_BINARY = 3                     ' Free form binary
Public Const REG_DWORD = 4                      ' 32-bit number
Public Const ERROR_SUCCESS = 0&

Public Declare Function RegOpenKey Lib "advapi32.dll" Alias "RegOpenKeyA" (ByVal hKey As Long, ByVal lpSubKey As String, phkResult As Long) As Long
Public Declare Function RegCloseKey Lib "advapi32.dll" (ByVal hKey As Long) As Long
'--------------------------------------------------
Public Declare Function RegEnumKey Lib "advapi32.dll" Alias "RegEnumKeyA" (ByVal hKey As Long, ByVal dwIndex As Long, ByVal lpName As String, ByVal cbName As Long) As Long
Public Declare Function RegEnumValue Lib "advapi32.dll" Alias "RegEnumValueA" (ByVal hKey As Long, ByVal dwIndex As Long, ByVal lpValueName As String, lpcbValueName As Long, lpReserved As Long, lpType As Long, lpData As Byte, lpcbData As Long) As Long
'--------------------------------------------------
Public Declare Function RegQueryValueEx Lib "advapi32.dll" Alias "RegQueryValueExA" (ByVal hKey As Long, ByVal lpValueName As String, ByVal lpReserved As Long, lpType As Long, lpData As Any, lpcbData As Long) As Long






'*******************'
' special variables '
'*******************'
Public LngNewCursor&                    ' vars for animated cursor
Public GameWindow As RECT               ' the game window for mouse to be trapped, this is my variable, didn't copy it
Public MouseXY As POINTAPI              ' location of mouse

'*********'
' Sprites '
'*********'
'Public Type NoMovingSprite
'    Show As Boolean
'    X As Integer
'    Y As Integer
'    Height As Integer
'    Width As Integer
'    Data As Integer
'End Type


Public Type Critter                     ' Define my Sprite Object properties, dont' take marks off for the word critter! it's used by a lot of people everywhere, and yes it is a good name for it
    FrIndex As Integer                  ' Current Frame Index
    Xp As Integer                       ' X Position on Display Screen
    Yp As Integer                       ' Y Postion on Display Screen
    Width As Integer                    ' Width of Critter in pixels, for enemy missiles its x2
    Height As Integer                   ' Height of Critter in pixels, for enemy missiles its y2
    XDest As Integer                    ' Destination for x
    YDest As Integer                    ' Destination for y
    MissileAngle As Single              ' the angle of the missile (only apply to missiles)
    Distance As Single                 ' distance to destination (only apply to missiles)
    Direction As Integer                ' direction of sprite movement, needed for choosing pics
    Speed As Single                     ' speed of object, used by most objects in my game, some speeds may be in decimals
    Frames As Integer                   ' Amount of Frames in Sprite Set
    Show As Boolean                     ' Display or not to display (true=display)
    ImageSrcX(0 To 40) As Integer       ' X Position in Source File Main Image
    ImageSrcY(0 To 40) As Integer       ' Y Position in Source File Main Graphic
    ImageMaskX(0 To 40) As Integer      ' X Position in Source File Main Image (Mask)
    ImageMaskY(0 To 40) As Integer      ' Y Position in Source File Main Graphic (Mask)
    EventCount As Long                  ' determines when an event should occur
    AniSpeed As Integer                 ' speed of different animations
    MAFixX As Integer                   ' used only my missiles (not enemy missiles) this is needed because missile are pics. (to +/- the X distance to the tip of the missile to look right)
    Animate As Boolean                  ' is the thing still image or animated
End Type

' missile launchers and cities
Public GifLMBank(0 To 1) As Critter
Public GifMMBank(0 To 1) As Critter
Public GifRMBank(0 To 1) As Critter
Public GIFCity(0 To 7) As Critter

Public Const TotalSpriteN = 15

Public Sprites(0 To TotalSpriteN, 0 To 29) As Critter              ' all sprites
' first array dimension is the type of sprite, second arry dimension is the index (how many) of that type of sprite
' first array sprite types:
'       0 = missile sprite
'       1 = bomber sprite
'       2 = bomb sprite
'       3 = normal explosions
'       4 = first type of bomber explosion
'       5 = second type of bomber explosion
'       6 = bonus sprite (still image, no animation)
' * # 7 is not a sprite, its the enemy missile lines
Public Const SmissileN = 0         ' missile
Public Const SBomberN = 1
Public Const SbombN = 2
Public Const SNExN = 3
Public Const S1BExN = 4
Public Const S2BExN = 5
Public Const SbonusN = 6
Public Const SICBMN = 7
Public Const SCitiesN = 8          ' draw cities
Public Const SGlauncherN = 9       ' draw green launcher
Public Const SBlauncherN = 10      ' draw blue launcher
Public Const SSfireN = 11          ' draw small fire
Public Const SNukeN = 12           ' draw nuke explosion
Public Const S3BExN = 13            ' another bomber explode sprite
Public Const SBombExN = 14          ' explosion when bomb is hit
Public Const SBonusExN = 15         ' explosion sprite when bonus is 'hit'

Dim SpType As Integer               ' below variables for animation sprite for count
Dim SpSubN As Integer
Dim SpMaxN As Integer
Public AnySP As Boolean             ' is there any more animations
Dim FindDirection As Integer

Public Sub DoAnimation()
' brief description of how sprites works in my program
'   there are 2 important picture boxes, workscr and clean screen
'   at the start of a new level, the background picture of the game window is copied onto cleanscreen and workscr (getcleanscreen sub)
'   when the game begins, the first thing the do animation does is copy the whole cleanscreen image onto workscr picbox
'   after the workscreen is reset with the original picture, the sprites start to be drawn on there, when all sprites are drawn...
'   the workscr picture is copyed to the gamewindow for player to see, so the animation works in background form (frmsprites) while player plays game
'brief description of how individual sprites are copied onto the workscreen with transparency
'   every sprite that is suppose to show will get it's mask to AND into the workscreen(so the white will not be drawn),
'   then OR the real image onto the masked part (so the back is not draw, now you get a sprite
'   ** now this is a very slow way compared to directx direct draw, but it will make flicker free animation...

' Reset Background, make workpage clean again
' each frame will be completely redrawn, meaning background reset etc, instead of repairing the parts that need to be repaired after a frame,
' i chose this way because in later levels 15, 16, etc things will be all over the screen and to repair parts of the background when there are so
' many objects, it will probably slow the animation down!
BitBlt FrmSprites.WorkScr.hdc, 0, 0, FrmSprites.CleanScreen.ScaleWidth, _
    FrmSprites.CleanScreen.ScaleHeight, FrmSprites.CleanScreen.hdc, 0, 0, SRCCOPY
' bitblt description:
'      target place (picbox, form window), destination x, destination y, destination width of copy,
'   destination height of copy, source place (picbox, formwindow), source x, source y

' draw enemy missile lines, this is drawn first so that all other sprites is on top of this
EOnSnum = 0                             ' reset it to 0
AnySP = False                           ' reset to no animation, if the codes below detects that all .show = false then anysp will stay false and indicate it to main game loop
For SpSubN = 0 To MaxEM
    With Sprites(7, SpSubN)
        If .Show = True Then            ' if it's suppose to be drawn, draw it
            AnySP = True                ' there is animation, report that
            EOnSnum = EOnSnum + 1       ' there is 1 more enemy line
            FrmSprites.WorkScr.Line (.Xp, .Yp)-(.Width, .Height), EColor    ' draw the line onto the workscreen
            SetPixelV FrmSprites.WorkScr.hdc, .Width, .Height, vbRed
            SetPixelV FrmSprites.WorkScr.hdc, .Width - 1, .Height, vbRed    ' the next for lines draws a dot around (easier to see)
            SetPixelV FrmSprites.WorkScr.hdc, .Width + 1, .Height, vbRed
            SetPixelV FrmSprites.WorkScr.hdc, .Width, .Height - 1, vbRed
            SetPixelV FrmSprites.WorkScr.hdc, .Width, .Height + 1, vbRed
        End If
    End With
Next

For SpType = 0 To TotalSpriteN                     ' loop through all the sprites
    Select Case SpType
    Case SmissileN                              ' missile sprites
        SpMaxN = MaxMN                  ' this is used to reduce the number of redundant loops to check if its visible
    Case SBomberN                              ' bomber sprites
        SpMaxN = 12                     ' go through 25 times to check if that type of bomber is visible
    Case SbombN                              ' bomb sprites
        SpMaxN = MaxB
    Case SBombExN
        SpMaxN = MaxB
    Case SNExN                              ' Normal explosion (missiles)
        SpMaxN = MaxEx
    Case S1BExN                              ' bomber explode 1
        SpMaxN = 0                      ' loop just once because that explosion can only happen on screen once and (there is only 1 array for this explosion)
    Case S2BExN                              ' bomber explode 2
        SpMaxN = 0                      ' same concept as case 4
    Case S3BExN
        SpMaxN = 0
    Case SbonusN                              ' bonus sprites
        SpMaxN = 9                      ' there are a total of 10 bonuses (0-9) and they must all be looped throught to check
    Case SICBMN
        GoTo SkipDraw
    Case SCitiesN
        SpMaxN = 7                 ' 8 cities on screen
    Case SGlauncherN
        SpMaxN = 2
    Case SBlauncherN
        SpMaxN = 2
    Case SSfireN
        SpMaxN = 7
    Case SNukeN
        SpMaxN = 2
    Case SBonusExN
        SpMaxN = 0
    End Select
    ' start to work with the sprites
    For SpSubN = 0 To SpMaxN            ' loop through second dimension with maximum loop to save time
        With Sprites(SpType, SpSubN)    ' check each sprite
        If .Show = True Then
            AnySP = True                ' report that there is still animation left (used to close a level)
            If SpType = 1 Then               ' since i didn't want to put all the bomber pictures in one giant picbox, i will have to write this one differently than the rest( the rest is the else statement)
                
                If .Direction = 0 Then
                    FindDirection = SpSubN * 2
                ElseIf .Direction = 1 Then
                    FindDirection = SpSubN * 2 + 1
                End If
                BitBlt FrmSprites.WorkScr.hdc, .Xp, .Yp, .Width, .Height, FrmSprites.BomberS(FindDirection).hdc, _
                        .ImageMaskX(0), .ImageMaskY(0), SRCAND          'And mask to WorkScr
                BitBlt FrmSprites.WorkScr.hdc, .Xp, .Yp, .Width, .Height, FrmSprites.BomberS(FindDirection).hdc, _
                        .ImageSrcX(0), .ImageSrcY(0), SRCPAINT       'Or image to WorkScr
            Else
                ' when the sprites and masks are ready to be copied onto the workscreen, then copy
                BitBlt FrmSprites.WorkScr.hdc, .Xp, .Yp, .Width, .Height, FrmSprites.Sprite(SpType).hdc, _
                        .ImageMaskX(.FrIndex), .ImageMaskY(.FrIndex), SRCAND           'And mask to WorkScr
                BitBlt FrmSprites.WorkScr.hdc, .Xp, .Yp, .Width, .Height, FrmSprites.Sprite(SpType).hdc, _
                        .ImageSrcX(.FrIndex), .ImageSrcY(.FrIndex), SRCPAINT       'Or image to WorkScr
            End If
            If .Animate = True Then    ' if sprites are animated, then advance frames
                .EventCount = .EventCount + 1       ' advance delay
                If .EventCount > .AniSpeed Then     ' speed of animation
                    .FrIndex = .FrIndex + 1         ' advance frame
                    .EventCount = 0
                    If .FrIndex > .Frames Then      ' if the animation reached it's end then
                        If SpType <> 2 Then         ' if it's not the bombsprite, then it disappears, for bombs, they loop frames
                            .Show = False           ' when it's done, then don't show, if it's the bomb sprite, then i want it to loop the frames again so don't make invis
                        End If
                        .FrIndex = 0                ' index will be back to 0
                    End If
                End If
            End If
            If SpType = 1 Then                      ' if it's a bomber then
                .EventCount = .EventCount + 1       ' if bomber/bonus then count event, it's used for determine when to drop bombs
                Exit For                            ' dont' search for other bombers to display, go to next sprite to display
                Main.BType = SpSubN                 ' restate the bomber type just incase (safty feature to prevent freaky things from happening)
            ElseIf SpType = 6 Then                  ' if it's a bonus then advance count
                .EventCount = .EventCount + 1       ' this eventcount keeps track of how long the bonus has been displayed,
                Main.BonusType = SpSubN             ' another saftey feature to restate the type of bonus
            End If
            
            ' make fall effect for bomber explosion
            If SpType = 4 Or SpType = 5 Or SpType = 13 Then
                If .Direction = 0 Then
                    .Xp = .Xp + .Speed
                    '.Speed = .Speed / 1.2
                ElseIf .Direction = 1 Then
                    .Xp = .Xp - .Speed
                End If
                .Yp = .Yp + .Speed ' (1 / (.Speed * 2))
            End If
        End If
        End With
    Next
SkipDraw:
Next

' draw target cursor
For SpSubN = 0 To MaxMN
 With Sprites(0, SpSubN)
  If .Show = True Then  ' draw target whenever a missile is on screen
    BitBlt FrmSprites.WorkScr.hdc, .XDest - 15, .YDest - 15, 32, 32, FrmSprites.Target.hdc, 0, 32, SRCAND
    BitBlt FrmSprites.WorkScr.hdc, .XDest - 15, .YDest - 15, 32, 32, FrmSprites.Target.hdc, 0, 0, SRCPAINT
  End If
 End With
Next

'draw missile launchers
With GifLMBank(SamIndex)
  If .Show = True Then
    BitBlt FrmSprites.WorkScr.hdc, .Xp, .Yp, .Width, .Height, FrmSprites.GifLMBank(SamIndex).hdc, _
        .ImageMaskX(0), .ImageMaskY(0), SRCAND           'And mask to WorkScr
    BitBlt FrmSprites.WorkScr.hdc, .Xp, .Yp, .Width, .Height, FrmSprites.GifLMBank(SamIndex).hdc, _
        .ImageSrcX(0), .ImageSrcY(0), SRCPAINT       'Or image to WorkScr
  End If
End With
With GifMMBank(SamIndex)
  If .Show = True Then
    BitBlt FrmSprites.WorkScr.hdc, .Xp, .Yp, .Width, .Height, FrmSprites.GifMMBank(SamIndex).hdc, _
        .ImageMaskX(0), .ImageMaskY(0), SRCAND           'And mask to WorkScr
    BitBlt FrmSprites.WorkScr.hdc, .Xp, .Yp, .Width, .Height, FrmSprites.GifMMBank(SamIndex).hdc, _
        .ImageSrcX(0), .ImageSrcY(0), SRCPAINT       'Or image to WorkScr
  End If
End With
With GifRMBank(SamIndex)
  If .Show = True Then
    BitBlt FrmSprites.WorkScr.hdc, .Xp, .Yp, .Width, .Height, FrmSprites.GifRMBank(SamIndex).hdc, _
        .ImageMaskX(0), .ImageMaskY(0), SRCAND           'And mask to WorkScr
    BitBlt FrmSprites.WorkScr.hdc, .Xp, .Yp, .Width, .Height, FrmSprites.GifRMBank(SamIndex).hdc, _
        .ImageSrcX(0), .ImageSrcY(0), SRCPAINT       'Or image to WorkScr
  End If
End With

'draw cities
For SpSubN = 0 To 7
 With GIFCity(SpSubN)
  If .Show = True Then
    BitBlt FrmSprites.WorkScr.hdc, .Xp, .Yp, .Width, .Height, FrmSprites.Sprite(8).hdc, _
        .ImageMaskX(.FrIndex), .ImageMaskY(.FrIndex), SRCAND         'And mask to WorkScr
    BitBlt FrmSprites.WorkScr.hdc, .Xp, .Yp, .Width, .Height, FrmSprites.Sprite(8).hdc, _
        .ImageSrcX(.FrIndex), .ImageSrcY(.FrIndex), SRCPAINT     'Or image to WorkScr
  End If
 End With
Next

' paint all sprites onto the gamewindow screen all at once so there is no flicker
BitBlt Main.PicMain.hdc, 0, 0, FrmSprites.WorkScr.ScaleWidth, FrmSprites.WorkScr.ScaleHeight, _
    FrmSprites.WorkScr.hdc, 0, 0, SRCCOPY
End Sub


Public Sub Initialize()
'the following code initializes my sprites
Dim SpriteC%              ' sprite frame count
Dim HH%                   ' horizontal pixel
Dim Count1%
Dim SpriteN%              ' sprite count (multipurpose)

' Fill up the Sprite arrays with the positions of the graphic images in the sprite graphics
' Missile explosions
For SpriteN = 0 To MaxEx
    With Sprites(SNExN, SpriteN)
        .FrIndex = 0                ' starting frames of the sprites is 0
        .Width = 64                 ' the width of the sprites used
        .Height = 64                ' the height of the sprites used
        .Show = False               ' disable the show flag
        .Frames = 23                ' amount of frames in sprite (0 - 23, or 24 frames, but 0 had to be counted so it's 23)
        .AniSpeed = 0               ' speed of this sprite animation
        .Animate = True             ' animate it
        HH = 0                      ' reset to 0 for each explosion index
        For SpriteC = 0 To .Frames  ' count to fill values for real image and mask
            .ImageSrcX(SpriteC) = HH    ' first frame (from the frmSprite1  Picturebox)
            .ImageSrcY(SpriteC) = 0     ' 0 is the top left corner of each sprite
            .ImageMaskX(SpriteC) = HH   ' frame mask
            .ImageMaskY(SpriteC) = 64   ' 64 is the top left corner of each mask
            HH = HH + 64            ' advance it for next image location
        Next
    End With
Next

' bombs
For SpriteN = 0 To MaxB             ' same concept as aboe
    With Sprites(SbombN, SpriteN)
        Randomize
        .Width = 20
        .Height = 20
        .Show = False
        .Frames = 8
        .FrIndex = .Frames * Rnd    ' rand a starting picture
        .AniSpeed = 1               ' speed of animation, how may loop until it changes frame (smaller the number the faster the animation)
        .Animate = True
        HH = 0                      ' reset to 0 for bombs uses
        For SpriteC = 0 To .Frames
            .ImageSrcX(SpriteC) = .Width + HH
            .ImageSrcY(SpriteC) = 0
            .ImageMaskX(SpriteC) = 0    ' the mask location is always the same for this picture set
            .ImageMaskY(SpriteC) = 0
            HH = HH + .Width
        Next
    End With
Next

' bonus explode (get bonus)
For SpriteN = 0 To MaxB
    With Sprites(SBombExN, SpriteN)
        .Width = 64
        .Height = 64
        .Show = False
        .FrIndex = 0
        .Frames = 8
        .AniSpeed = 1
        .Animate = True
        HH = 0
        For SpriteC = 0 To .Frames
            .ImageSrcX(SpriteC) = HH
            .ImageSrcY(SpriteC) = 0
            .ImageMaskX(SpriteC) = HH
            .ImageMaskY(SpriteC) = .Height
            HH = HH + .Width
        Next
    End With
Next
' bomber explode these 2 explosions must be seperated and be in different types because the picboxs are seperate
With Sprites(S1BExN, 0)                  ' there should only be 1 of a bomber explosion at a time
    .Width = 108
    .Height = 134
    .Show = False
    .FrIndex = 0
    .Frames = 8
    .AniSpeed = 1
    .Animate = True
    HH = 0
    For SpriteC = 0 To .Frames
        .ImageSrcX(SpriteC) = HH
        .ImageSrcY(SpriteC) = 0     ' 0 is the top left corner of each sprite y location
        .ImageMaskX(SpriteC) = HH   ' frame mask x
        .ImageMaskY(SpriteC) = .Height  ' mask y location
        HH = HH + .Width
    Next
End With
With Sprites(S2BExN, 0)
    .Width = 71
    .Height = 100
    .Show = False
    .FrIndex = 0
    .Frames = 16
    .AniSpeed = 0
    .Animate = True
    HH = 0
    For SpriteC = 0 To .Frames
        .ImageSrcX(SpriteC) = HH
        .ImageSrcY(SpriteC) = 0
        .ImageMaskX(SpriteC) = HH
        .ImageMaskY(SpriteC) = .Height
        HH = HH + .Width
    Next
End With
With Sprites(S3BExN, 0)
    .Width = 128
    .Height = 128
    .Show = False
    .FrIndex = 0
    .Frames = 14
    .AniSpeed = 1
    .Animate = True
    HH = 0
    For SpriteC = 0 To .Frames
        .ImageSrcX(SpriteC) = HH
        .ImageSrcY(SpriteC) = 0
        .ImageMaskX(SpriteC) = HH
        .ImageMaskY(SpriteC) = .Height
        HH = HH + .Width
    Next
End With

For SpriteN = 0 To 12               ' that's the number of bombers/planes in total
With Sprites(SBomberN, SpriteN)
    Select Case SpriteN
    Case 0                           ' fighter
        .Speed = 5                  ' speed of the bomber, can vary depending on the bomber
        .FrIndex = 2                ' how many things to drop
    Case 1                          ' bomber
        .Speed = 3
        .FrIndex = 1
    Case 2                          ' f14 tomcat, fighter
        .Speed = 6
        .FrIndex = 4
    Case 3                          ' civilian plane
        .Speed = 3
    Case 4                          ' bomber
        .Speed = 4
        .FrIndex = 3
    Case 5                          ' bomber
        .Speed = 3
        .FrIndex = 4
    Case 6                          ' fighter
        .Speed = 5.5
        .FrIndex = 2
    Case 7                          ' fighter
        .Speed = 5.5
        .FrIndex = 5
    Case 8                          ' Nod Banshee 1, fighter
        .Speed = 7
        .FrIndex = 3
    Case 9                          ' Nod banshee 2, ,bomber
        .Speed = 7.5
        .FrIndex = 2
    Case 10                        ' concord civilian
        .Speed = 6
    Case 11                         ' f117 stealth bomber
        .Speed = 3
        .FrIndex = 6
    Case 12                         ' b2 stealth bomber
        .Speed = 5
        .FrIndex = 8                ' go mad with the bombs
    End Select
    .Animate = False            ' it's a still image
    .Width = FrmSprites.BomberS(SpriteN * 2).ScaleWidth               ' getting the width
    .Height = FrmSprites.BomberS(SpriteN * 2).ScaleHeight \ 2         ' getting height
    .ImageSrcX(0) = 0
    .ImageSrcY(0) = 0
    .ImageMaskX(0) = 0
    .ImageMaskY(0) = .Height
    .Show = False                   ' disables the show flag
End With
Next

'set values for city sprite
HH = 0
For SpriteN = 0 To 7
    With GIFCity(SpriteN)
        .Frames = 23        ' 24 cities for each placeholder
        .Height = 33
        .Width = 33
        HH = 33
        For SpriteC = 0 To .Frames
            .ImageSrcX(SpriteC) = HH
            .ImageSrcY(SpriteC) = 0
            .ImageMaskX(SpriteC) = 0
            .ImageMaskY(SpriteC) = 0
            HH = HH + 33
        Next
        .Yp = 472
    End With
Next

GIFCity(0).Xp = 112
GIFCity(1).Xp = 200
GIFCity(2).Xp = 288
GIFCity(3).Xp = 376
GIFCity(4).Xp = 560
GIFCity(5).Xp = 648
GIFCity(6).Xp = 736
GIFCity(7).Xp = 824
' sam

'HH = 0
'Count1 = 16
'For SpriteN = 0 To 2
'    With Sprites(SBlauncherN, SpriteN)
'        .Frames = 25
'        .Animate = False
'        .Height = 41
'        .Width = 41
'        For Counting = 0 To .Frames
'            .ImageSrcX(Counting) = HH
'            .ImageSrcY(Counting) = 0
'            .ImageMaskX(Counting) = HH
'            .ImageMaskY(Counting) = .Height
'        Next
'        .Xp = Count1
'        .Yp = 464
'        HH = HH + .Width
'        Count1 = Count1 + 448
'    End With
'Next
For SpriteC = 0 To 1
    With GifLMBank(SpriteC)
        .Xp = 16
        .Yp = 464
        .Height = 41
        .Width = 41
        .ImageSrcX(0) = 0
        .ImageSrcY(0) = 0
        .ImageMaskX(0) = 0
        .ImageMaskY(0) = .Height
    End With
    With GifMMBank(SpriteC)
        .Xp = 464
        .Yp = 464
        .Height = 41
        .Width = 41
        .ImageSrcX(0) = 0
        .ImageSrcY(0) = 0
        .ImageMaskX(0) = 0
        .ImageMaskY(0) = .Height
    End With
    With GifRMBank(SpriteC)
        .Xp = 912
        .Yp = 464
        .Height = 41
        .Width = 41
        .ImageSrcX(0) = 0
        .ImageSrcY(0) = 0
        .ImageMaskX(0) = 0
        .ImageMaskY(0) = .Height
    End With
Next

'fire

Dim Counting As Integer
For SpriteN = 0 To 7
    HH = 0
    With Sprites(SSfireN, SpriteN)
        .Show = False
        .Frames = 35
        .Animate = True
        .AniSpeed = 0
        .Height = 47
        .Width = 26
        .FrIndex = 0
        For Counting = 0 To .Frames
            .ImageSrcX(Counting) = HH
            .ImageSrcY(Counting) = 0
            .ImageMaskX(Counting) = HH
            .ImageMaskY(Counting) = .Height
        HH = HH + .Width
        Next
        .Yp = 484
    End With
Next

'NUKE
For SpriteN = 0 To 2
    HH = 0
        With Sprites(SNukeN, SpriteN)
        .Show = False
        .Frames = 25
        .Animate = True
        .AniSpeed = 0
        .Height = 75
        .Width = 63
        .FrIndex = 0
        For Counting = 0 To .Frames
            .ImageSrcX(Counting) = HH
            .ImageSrcY(Counting) = 0
            .ImageMaskX(Counting) = HH
            .ImageMaskY(Counting) = .Height
            HH = HH + .Width
        Next
        .Yp = 432
    End With
Next
Sprites(SNukeN, 0).Xp = 7
Sprites(SNukeN, 1).Xp = 460
Sprites(SNukeN, 2).Xp = 900




HH = 0
For SpriteN = 0 To 9                ' Bonus set
    With Sprites(SbonusN, SpriteN)
        .Animate = False            ' it's a still image
        .Width = 30
        .Height = 30
        .Show = False
        .EventCount = 0
        .ImageSrcX(0) = HH
        .ImageSrcY(0) = 0
        .ImageMaskX(0) = HH
        .ImageMaskY(0) = .Height
    End With
    HH = HH + 30
Next


With Sprites(SBonusExN, 0)
    .Width = 128
    .Height = 128
    .Show = False
    .FrIndex = 0
    .Frames = 11
    .AniSpeed = 1
    .Animate = True
    HH = 0
    For SpriteC = 0 To .Frames
        .ImageSrcX(SpriteC) = HH
        .ImageSrcY(SpriteC) = 0
        .ImageMaskX(SpriteC) = HH
        .ImageMaskY(SpriteC) = .Height
        HH = HH + .Width
    Next
End With

For SpriteN = 0 To MaxEM            ' this is for enemy missiles, its not needed since i think .show
    With Sprites(SICBMN, SpriteN)        ' will be false by default. but just in case, since its initialized at loading, it won't hurt performance
        .Show = False
    End With
Next

For SpriteN = 0 To MaxMN            ' make all missiles false
    With Sprites(SmissileN, SpriteN)
        .Show = False
        .Animate = False            ' it's a still image
    End With
Next

'end of sprite initialization
End Sub

Public Sub MissilePic(Angle As Integer, MIndex As Integer, Direction As Integer)
' choose and fill sprite vars with the right missile picture,
' angle = angle at which missile is fired at, direction is the direction of the missile 0 = left, 1 = right
' Mindex is the index of that missile
Dim AddN%                               ' temporary var
AddN = 0                                ' if its left then don't add anything to the imagemasks etc.
With Sprites(SmissileN, MIndex)                 ' ennums type 0(missile) with spriteN (max missiles allowed)
    .Show = True                        ' the new missile will show
    .Speed = MissileSpeed
    If Direction = 0 Then AddN = 410    ' if its going right, then i must add this number to the rest because the whole sprite is in 1 picbox
    Select Case Angle                   ' no matter which direction, the missiles will have the same size
    Case Is < 5
        .Width = 13                     ' the width of the sprites used
        .Height = 75                    ' the height of the sprites used
        .ImageSrcX(0) = AddN            ' first frame (from the frmSprite1  Picturebox)
    Case Is < 15
        .Width = 16
        .Height = 73
        .ImageSrcX(0) = 13 + AddN       ' used to get the right sprite for the right angle
    Case Is < 25
        .Width = 28
        .Height = 70
        .ImageSrcX(0) = 29 + AddN
    Case Is < 35
        .Width = 38
        .Height = 65
        .ImageSrcX(0) = 57 + AddN
    Case Is < 45
        .Width = 47
        .Height = 58
        .ImageSrcX(0) = 95 + AddN
    Case Is < 55
        .Width = 59
        .Height = 49
        .ImageSrcX(0) = 142 + AddN
    Case Is < 65
        .Width = 65
        .Height = 40
        .ImageSrcX(0) = 201 + AddN
    Case Is < 75
        .Width = 71
        .Height = 29
        .ImageSrcX(0) = 266 + AddN
    Case Is > 74
        .Width = 73
        .Height = 17
        .ImageSrcX(0) = 337 + AddN
    End Select
    .ImageSrcY(0) = 0                   ' the top corner of each sprite
    .ImageMaskY(0) = .Height            ' the top left corner of each mask
    .ImageMaskX(0) = .ImageSrcX(0)
          ' all ^ are set to 0 are because they are not animated, so only use frame 1 (0)
    If .Direction = 0 Then              ' from left
        .MAFixX = .Width                ' the fixes are needed because the tip of the missiles and relation to their .xp and .yp are different depending on direction
    ElseIf .Direction = 2 Then          ' from right
        .MAFixX = 0                     ' since it's going lef
    ElseIf .Direction = 1 Then          ' middle
        .MAFixX = .Width \ 2            ' if shooting straight, then the missile fix will be about 7 (width is 14)
    End If                              ' these fixes must be specified here and not in caldisance because the width has not been specified yet
End With
End Sub
Public Sub DrawStructure()

'draw missile launchers
With GifLMBank(SamIndex)
  If .Show = True Then
    BitBlt FrmSprites.WorkScr.hdc, .Xp, .Yp, .Width, .Height, FrmSprites.GifLMBank(SamIndex).hdc, _
        .ImageMaskX(0), .ImageMaskY(0), SRCAND           'And mask to WorkScr
    BitBlt FrmSprites.WorkScr.hdc, .Xp, .Yp, .Width, .Height, FrmSprites.GifLMBank(SamIndex).hdc, _
        .ImageSrcX(0), .ImageSrcY(0), SRCPAINT       'Or image to WorkScr
  End If
End With
With GifMMBank(SamIndex)
  If .Show = True Then
    BitBlt FrmSprites.WorkScr.hdc, .Xp, .Yp, .Width, .Height, FrmSprites.GifMMBank(SamIndex).hdc, _
        .ImageMaskX(0), .ImageMaskY(0), SRCAND           'And mask to WorkScr
    BitBlt FrmSprites.WorkScr.hdc, .Xp, .Yp, .Width, .Height, FrmSprites.GifMMBank(SamIndex).hdc, _
        .ImageSrcX(0), .ImageSrcY(0), SRCPAINT       'Or image to WorkScr
  End If
End With
With GifRMBank(SamIndex)
  If .Show = True Then
    BitBlt FrmSprites.WorkScr.hdc, .Xp, .Yp, .Width, .Height, FrmSprites.GifRMBank(SamIndex).hdc, _
        .ImageMaskX(0), .ImageMaskY(0), SRCAND           'And mask to WorkScr
    BitBlt FrmSprites.WorkScr.hdc, .Xp, .Yp, .Width, .Height, FrmSprites.GifRMBank(SamIndex).hdc, _
        .ImageSrcX(0), .ImageSrcY(0), SRCPAINT       'Or image to WorkScr
  End If
End With

'draw cities
For SpSubN = 0 To 7
 With GIFCity(SpSubN)
  If .Show = True Then
    BitBlt FrmSprites.WorkScr.hdc, .Xp, .Yp, .Width, .Height, FrmSprites.Sprite(8).hdc, _
        .ImageMaskX(.FrIndex), .ImageMaskY(.FrIndex), SRCAND       'And mask to WorkScr
    BitBlt FrmSprites.WorkScr.hdc, .Xp, .Yp, .Width, .Height, FrmSprites.Sprite(8).hdc, _
        .ImageSrcX(.FrIndex), .ImageSrcY(.FrIndex), SRCPAINT   'Or image to WorkScr
  End If
 End With
Next

BitBlt Main.PicMain.hdc, 0, 0, FrmSprites.WorkScr.ScaleWidth, FrmSprites.WorkScr.ScaleHeight, _
    FrmSprites.WorkScr.hdc, 0, 0, SRCCOPY

Main.PicMain.Refresh
DoEvents
End Sub

Public Sub GetCleanScreen()
FrmSprites.CleanScreen.Width = Main.PicMain.Width       ' these 4 commands stretch the 2 important screens to the size of the game pic size
FrmSprites.CleanScreen.Height = Main.PicMain.Height
FrmSprites.WorkScr.Width = Main.PicMain.Width
FrmSprites.WorkScr.Height = Main.PicMain.Height
Main.PicMain.Refresh                                    ' make sure picmain is current for copying

' Copy game picture Page to Clean Screen, this saves a clean background to refresh from when restoring the background undeneath a sprite
BitBlt FrmSprites.CleanScreen.hdc, 0, 0, Main.PicMain.ScaleWidth, Main.PicMain.ScaleHeight, _
    Main.PicMain.hdc, 0, 0, SRCCOPY
FrmSprites.CleanScreen.Refresh                          ' refreash the picbox

' Copy MainForm to WorkSpace Screen, copy the same background picture to the work screen
BitBlt FrmSprites.WorkScr.hdc, 0, 0, Main.PicMain.ScaleWidth, Main.PicMain.ScaleHeight, _
    Main.PicMain.hdc, 0, 0, SRCCOPY
FrmSprites.WorkScr.Refresh                              ' refreash the picbox
End Sub

Public Sub StartAnimatedCursor(AniFilePath As String)
If InStr(1, AniFilePath, "\") Then                      ' if full path specified, then put full path
    LngNewCursor = LoadCursorFromFile(AniFilePath)
Else                                                    ' if partial path specified, then add app.path
    LngNewCursor = LoadCursorFromFile(App.Path & "\" & AniFilePath)
End If
SetSystemCursor LngNewCursor, OCR_Normal                ' set the animated cursor for normal mouse pointer
End Sub

Public Sub DisableTrap()                                ' trap mouse to window
With GameWindow                                         ' to set the new coordinates
  .Left = 0&
  .Top = 0&
  .Right = 1024                                         ' since this resolution is required, this will be sufficient to release the mouse
  .Bottom = 768
End With
ClipCursor GameWindow
End Sub

Public Sub EnableTrap()                                 ' release trap of game window
With GameWindow                                         ' to set the new coordinates
  .Left = 24
  .Top = 126
  .Right = 993
  .Bottom = 125 + MinMHeight
End With
ClipCursor GameWindow
End Sub

Public Sub NoMove()                                     ' cant move mouse or see it
With GameWindow                                         ' to set the new coordinates
  .Left = 512
  .Top = 447
  .Right = 513
  .Bottom = 448
End With
ClipCursor GameWindow
End Sub

'**************************'
' Write to highscores list '
'**************************'

Public Function HighScoreRank(CName As String, CScore As Single) As Integer
Dim CountF%                                ' count file counting variable
Dim SearchS$                               ' search string
Dim CNames$(1 To 10)                       ' names
Dim CScores(1 To 10) As Integer                     ' score
HighScoreRank = -1
On Error GoTo MakeNewScore                          ' i can't say on error goto newscore because this command only lets me go to labels
Open App.Path + "\misc\config.txt" For Input As #1
For CountF = 1 To 5
    If EOF(1) Then NewScore                         ' should not be end of file, make new file if error is detected
    Line Input #1, SearchS                          ' skips the keys, modes
Next
For CountF = 1 To 10
    If EOF(1) Then NewScore                         ' make new file if error occurs cos the file should not end right now
    Line Input #1, CNames(CountF)                   ' stores names
Next

For CountF = 1 To 10                                ' search for high score
    If EOF(1) Then NewScore
    Input #1, CScores(CountF)                       ' stores score
    If CScores(CountF) <= CScore And HighScoreRank = -1 Then    ' if the player score is higher than that position and rank has not been determined then
        HighScoreRank = CountF                      ' rank is the for count
    End If
Next
Close #1                                            ' close file
If HighScoreRank = -1 Then Exit Function            ' if player got no rank then don't do the rest

For CountF = 10 To HighScoreRank + 1 Step -1        ' rearrange the names and scores
    CNames(CountF) = CNames(CountF - 1)             ' make highscore index 10 = 9, 9 = 8, 8 = 7 etc. all the way until it hits the high rank, because ranks higher don't change pos
    CScores(CountF) = CScores(CountF - 1)
Next
CNames(HighScoreRank) = CName                       ' score and name is now in the rank it's suppose to be
CScores(HighScoreRank) = CScore

Open App.Path + "\misc\config.txt" For Output As #1
Print #1, "DO NOT MODIFY THIS FILE"                 ' rewrite the whole name list to the correct places
Print #1, Main.KeyLm
Print #1, Main.KeyMm
Print #1, Main.KeyRm
Print #1, Main.Controlmode

For CountF = 1 To 10
    Print #1, CNames(CountF)                        ' rewrite name
Next
For CountF = 1 To 10
    Print #1, CScores(CountF)
    'Print #1, Right(CScores(CountF), Len(CNames(CountF)) - 1)       ' for some reason the output has a space infront of the
Next                                                                ' output, so i have to use this method to get rid of teh space ( i.e. " 10000" = "10000")
Close #1
Exit Function                                       ' don't write a new file if there is no error

MakeNewScore:                                       ' if error occured, then make a new file
NewScore
End Function

Public Sub NewScore()                               ' make new score list
Dim CountF As Integer
On Error Resume Next                                ' if file is already closed then it won't report error, close#1 is right below
Close #1
MsgBox "The configuration file is corrupt, tampered with, or property is set to ReadOnly." & vbCrLf & _
    "If you are playing the game on a read-only disk (CD-ROM), you will loose all configuration settings the next time you start up " & _
    "and you will not be able to save any highscores." & vbCrLf & "...Trying to ReWrite new configuration file..." _
    , vbInformation, "Open File Error"              ' say file was corrupt
On Error GoTo SkipWrite                             ' if the config file is read only (on disk) then hopefully, this line will not give us an error
Open App.Path + "\misc\config.txt" For Output As #1
Print #1, "DO NOT MODIFY THIS FILE"                 ' rewrite whole file
Print #1, "A"
Print #1, "S"
Print #1, "D"
Print #1, "km"
For CountF = 1 To 10
    Print #1, "Defiant"
Next
For CountF = 10000 To 1000 Step -1000
    If CountF = 10000 Then
        Print #1, Right(CountF, 5)                  ' for some reason, if i just plainly put countF, it will have a space in front,
    Else                                            ' the purpose of these if statements is to get rid of that space (i.e. " 9000" = "9000"
        Print #1, Right(CountF, 4)
    End If
Next
Close #1                                            ' close #1
SkipWrite:
End Sub

Public Function ConvPTwip(Pixel%) As Integer        ' every 15 twips is one pixel, i wrote this ealier on thinking i will need it
ConvPTwip = Pixel * 15                              ' however, i did not need it because of the new way i was animating teh game,
End Function                                        ' so i do not need to convert, but i'm leaving this in just incase i need it in the future mods for this game

Public Function ConvTPixel(Twip%) As Integer        ' convert twips to pixels
ConvTPixel = Int(Twip / 15)
End Function

Public Sub PlayMusic(MusicFile$)                    ' how to play music
StopMusic
mciSendString "open waveaudio!" & App.Path + "\music\" & MusicFile & " alias sound", 0, 0, 0
mciSendString "play sound", 0, 0, 0
End Sub
Public Sub StopMusic()                              ' how to stop music
mciSendString "stop sound", 0, 0, 0
mciSendString "close sound", 0, 0, 0
End Sub

Public Function IsStopped() As Boolean
    mciSendString "status sound mode", RS, 8, 0     ' get status of the sound, RS is the return string, 8 is the length of the string returned,, 0 is callback, no use here
    If InStr(1, RS, "stopped") <> 0 Then            ' if the returned status is stopped, then restart music
        IsStopped = True
    Else
        IsStopped = False
    End If
End Function

Public Function GetSettingString(hKey As Long, strPath As String, strValue As String, Optional Default As String) As String
Dim hCurKey As Long
Dim lValueType As Long
Dim strBuffer As String
Dim lDataBufferSize As Long
Dim intZeroPos As Integer
Dim lRegResult As Long

' Set up default value
If Not IsEmpty(Default) Then
  GetSettingString = Default
Else
  GetSettingString = ""
End If

' Open the key and get length of string
lRegResult = RegOpenKey(hKey, strPath, hCurKey)
lRegResult = RegQueryValueEx(hCurKey, strValue, 0&, lValueType, ByVal 0&, lDataBufferSize)


    ' initialise string buffer and retrieve string
    strBuffer = String(lDataBufferSize, " ")
    lRegResult = RegQueryValueEx(hCurKey, strValue, 0&, 0&, ByVal strBuffer, lDataBufferSize)
    
    ' format string
    intZeroPos = InStr(strBuffer, Chr$(0))
    If intZeroPos > 0 Then
      GetSettingString = Left$(strBuffer, intZeroPos - 1)
    Else
      GetSettingString = strBuffer
    End If

lRegResult = RegCloseKey(hCurKey)
End Function

Public Function TickTimer(TickNew As Single, TickDelay As Single, TickCompare As Single) As Single
TickTimer = 0
If TickNew - TickCompare >= TickDelay Then TickTimer = 1
End Function
