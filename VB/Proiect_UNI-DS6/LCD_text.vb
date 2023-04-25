Imports System.IO.Ports
Public Class LCD_text
    Private Sub cmd_conti_on_Click(sender As Object, e As EventArgs) Handles cmd_conti_on.Click
        Port.Open()
        Port.Write("O")
        Port.Close()
    End Sub

    Private Sub cmd_conti_off_Click(sender As Object, e As EventArgs) Handles cmd_conti_off.Click
        Port.Open()
        Port.Write("F")
        Port.Close()
    End Sub

    Private Sub cmd_single_Click(sender As Object, e As EventArgs) Handles cmd_single.Click
        Port.Open()
        Port.Write("S")
        Port.Close()
    End Sub

    Private Sub cmd_clear_Click(sender As Object, e As EventArgs) Handles cmd_clear.Click
        Port.Open()
        Port.Write("X")
        Port.Close()
    End Sub

    Private Sub cmd_iesire_tlcd_Click(sender As Object, e As EventArgs) Handles cmd_iesire_tlcd.Click
        Close()
    End Sub

    Private Sub LCD_text_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        Port = New SerialPort(Portsertxt, 4800, Parity.None, 8, StopBits.One)
    End Sub
End Class