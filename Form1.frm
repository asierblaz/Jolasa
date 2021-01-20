VERSION 5.00
Begin VB.Form Form1 
   BackColor       =   &H00008000&
   Caption         =   "Form1"
   ClientHeight    =   7860
   ClientLeft      =   165
   ClientTop       =   810
   ClientWidth     =   14880
   FillColor       =   &H00004040&
   ForeColor       =   &H00008000&
   KeyPreview      =   -1  'True
   LinkTopic       =   "Form1"
   ScaleHeight     =   7860
   ScaleWidth      =   14880
   StartUpPosition =   3  'Windows Default
   Begin VB.Timer PorteroTimerAbajo 
      Enabled         =   0   'False
      Left            =   6840
      Top             =   6720
   End
   Begin VB.Timer porteroTimerArriba 
      Enabled         =   0   'False
      Left            =   5640
      Top             =   6720
   End
   Begin VB.CommandButton Arriba 
      BackColor       =   &H00008000&
      Height          =   855
      Left            =   3840
      MaskColor       =   &H00008000&
      Picture         =   "Form1.frx":0000
      Style           =   1  'Graphical
      TabIndex        =   4
      Top             =   5040
      Width           =   855
   End
   Begin VB.CommandButton Abajo 
      Appearance      =   0  'Flat
      BackColor       =   &H00008000&
      Height          =   975
      Left            =   3840
      MaskColor       =   &H00004000&
      Picture         =   "Form1.frx":40F3
      Style           =   1  'Graphical
      TabIndex        =   3
      Top             =   6000
      Width           =   855
   End
   Begin VB.CommandButton Reset 
      Caption         =   "SAIATU BERRIRO"
      Height          =   615
      Left            =   1440
      TabIndex        =   2
      Top             =   5880
      Width           =   1335
   End
   Begin VB.Timer lanzarTimer 
      Enabled         =   0   'False
      Left            =   480
      Top             =   7080
   End
   Begin VB.CommandButton Lanzar 
      Caption         =   "JAURTIKETA"
      Height          =   615
      Left            =   1440
      TabIndex        =   1
      Top             =   5880
      Width           =   1335
   End
   Begin VB.OLE portero 
      Appearance      =   0  'Flat
      AutoActivate    =   0  'Manual
      BackStyle       =   0  'Transparent
      BorderStyle     =   0  'None
      Class           =   "Paint.Picture"
      Height          =   2055
      Left            =   13680
      OleObjectBlob   =   "Form1.frx":694E
      TabIndex        =   5
      Top             =   1320
      Width           =   1095
   End
   Begin VB.Shape Shape3 
      BorderColor     =   &H80000005&
      BorderWidth     =   3
      Height          =   2175
      Left            =   5160
      Shape           =   3  'Circle
      Top             =   2280
      Width           =   2535
   End
   Begin VB.Shape Shape2 
      BorderColor     =   &H80000005&
      BorderStyle     =   6  'Inside Solid
      BorderWidth     =   5
      Height          =   7335
      Left            =   10920
      Top             =   240
      Width           =   4095
   End
   Begin VB.Shape Shape1 
      BorderColor     =   &H80000005&
      BorderStyle     =   6  'Inside Solid
      BorderWidth     =   5
      Height          =   5295
      Left            =   12720
      Top             =   1200
      Width           =   2175
   End
   Begin VB.Line Line3 
      Index           =   1
      X1              =   1920
      X2              =   0
      Y1              =   0
      Y2              =   0
   End
   Begin VB.Line Line2 
      BorderColor     =   &H8000000B&
      BorderStyle     =   6  'Inside Solid
      BorderWidth     =   5
      X1              =   0
      X2              =   0
      Y1              =   0
      Y2              =   7920
   End
   Begin VB.OLE baloia 
      Appearance      =   0  'Flat
      AutoActivate    =   0  'Manual
      BackColor       =   &H00008000&
      BorderStyle     =   0  'None
      Class           =   "Paint.Picture"
      Height          =   855
      Left            =   1920
      OleObjectBlob   =   "Form1.frx":3C566
      TabIndex        =   0
      Top             =   2760
      Width           =   855
   End
   Begin VB.Line Line1 
      BorderColor     =   &H8000000B&
      BorderStyle     =   6  'Inside Solid
      BorderWidth     =   5
      X1              =   6480
      X2              =   6480
      Y1              =   0
      Y2              =   7920
   End
   Begin VB.Menu Menu 
      Caption         =   "Menu"
      Begin VB.Menu jolastu 
         Caption         =   "Jolastu"
      End
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False


Private Sub Arriba_Click()
baloia.Top = baloia.Top - 150
End Sub


Private Sub Abajo_Click()
baloia.Top = baloia.Top + 150
End Sub



Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer)
Select Case KeyCode
        Case vbKeyUp
            baloia.Top = baloia.Top - 150
        Case vbKeyDown
            baloia.Top = baloia.Top + 150
    End Select
End Sub


Private Sub Form_Load()
MsgBox "Egin Klik menuan dagoen jolastu opzioan"
Reset.Visible = False


End Sub

Private Sub Lanzar_Click()
lanzarTimer.Enabled = True
lanzarTimer.Interval = 50
porteroTimerArriba.Enabled = True
porteroTimerArriba.Interval = 50
PorteroTimerAbajo.Enabled = True
PorteroTimerAbajo.Interval = 0

Lanzar.Visible = False
Reset.Visible = True

End Sub

Private Sub lanzarTimer_Timer()
 baloia.Left = baloia.Left + 150
 
If baloia.Left >= 14880 And (baloia.Top > 1300 And baloia.Top < 4440) Then
MsgBox "Gol"
lanzarTimer.Enabled = False
PorteroTimerAbajo.Interval = 0
porteroTimerArriba.Interval = 0

End If

If baloia.Left >= 14880 And Not (baloia.Top > 1300 And baloia.Top < 4440) Then
MsgBox "A las Nubes!!!"
lanzarTimer.Enabled = False
PorteroTimerAbajo.Interval = 0
porteroTimerArriba.Interval = 0
End If

End Sub


Private Sub PorteroTimerAbajo_Timer()
portero.Top = portero.Top + 150
If portero.Top >= 4440 Then
PorteroTimerAbajo.Interval = 0
porteroTimerArriba.Interval = 50
End If
End Sub

Private Sub porteroTimerArriba_Timer()
portero.Top = portero.Top - 150
If portero.Top <= 1330 Then
PorteroTimerAbajo.Interval = 50
porteroTimerArriba.Interval = 0





End If
End Sub

Private Sub Reset_Click()
lanzarTimer.Enabled = False
baloia.Left = 1920
baloia.Top = 2880
portero.Top = 2640
PorteroTimerAbajo.Interval = 0
porteroTimerArriba.Interval = 0
Lanzar.Visible = True
Reset.Visible = False
End Sub


