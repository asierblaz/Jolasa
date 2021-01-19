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
   LinkTopic       =   "Form1"
   ScaleHeight     =   7860
   ScaleWidth      =   14880
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton Reset 
      Caption         =   "SAIATU BERRIRO"
      Height          =   615
      Left            =   1440
      TabIndex        =   3
      Top             =   5880
      Width           =   1335
   End
   Begin VB.CommandButton Arriba 
      Caption         =   "?"
      Height          =   735
      Left            =   4560
      TabIndex        =   2
      Top             =   5520
      Width           =   855
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
      Left            =   12600
      Top             =   1200
      Width           =   2295
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
      OleObjectBlob   =   "Form1.frx":0000
      TabIndex        =   0
      Top             =   2880
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


Private Sub Form_Load()
Reset.Visible = False

End Sub

Private Sub jolastu_Click()
baloia.Top = baloia.Top - 150


End Sub

Private Sub Lanzar_Click()
lanzarTimer.Enabled = True


lanzarTimer.Interval = 50
Lanzar.Visible = False
Reset.Visible = True

End Sub

Private Sub lanzarTimer_Timer()
 baloia.Left = baloia.Left + 150
End Sub



Private Sub Reset_Click()
lanzarTimer.Enabled = False
baloia.Left = 1920
baloia.Top = 2880
Lanzar.Visible = True
Reset.Visible = False
End Sub
