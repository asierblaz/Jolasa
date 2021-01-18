VERSION 5.00
Begin VB.Form Form1 
   BackColor       =   &H00008000&
   Caption         =   "Form1"
   ClientHeight    =   7860
   ClientLeft      =   225
   ClientTop       =   870
   ClientWidth     =   14880
   FillColor       =   &H00004040&
   ForeColor       =   &H00008000&
   LinkTopic       =   "Form1"
   ScaleHeight     =   7860
   ScaleWidth      =   14880
   StartUpPosition =   3  'Windows Default
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
Private Sub jolastu_Click()

End Sub

Private Sub Menu_Click()

End Sub
