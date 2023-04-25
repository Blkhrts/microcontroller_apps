Imports System.IO.Ports
Public Class LCD_grafic
    Private Sub LCD_grafic_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        Port = New SerialPort(Portsertxt, 4800, Parity.None, 8, StopBits.One)
    End Sub

    Private Sub cmd_pornire_glcd_Click(sender As Object, e As EventArgs) Handles cmd_pornire_glcd.Click
        Port.Open()
        Port.Write("P")
        Port.Close()
    End Sub

    Private Sub cmd_oprire_glcd_Click(sender As Object, e As EventArgs) Handles cmd_oprire_glcd.Click
        Port.Open()
        Port.Write("O")
        Port.Close()
    End Sub

    Private Sub cmd_resetare_glcd_Click(sender As Object, e As EventArgs) Handles cmd_resetare_glcd.Click
        Port.Open()
        Port.Write("R")
        Port.Close()
    End Sub

    Private Sub cmd_iesire_glcd_Click(sender As Object, e As EventArgs) Handles cmd_iesire_glcd.Click
        Close()
    End Sub
End Class