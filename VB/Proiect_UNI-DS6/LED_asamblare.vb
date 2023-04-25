Imports System.IO.Ports
Public Class LED_asamblare
    Private Sub cmd_iesire_Click(sender As Object, e As EventArgs) Handles cmd_iesire.Click
        Close()
    End Sub

    Private Sub LED_asamblare_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        Port = New SerialPort(Portsertxt, 4800, Parity.None, 8, StopBits.One)
    End Sub

    Private Sub cmd_efect1_Click(sender As Object, e As EventArgs) Handles cmd_efect1.Click
        Port.Open()
        Port.Write("1")
        Port.Close()
    End Sub

    Private Sub cmd_efect2_Click(sender As Object, e As EventArgs) Handles cmd_efect2.Click
        Port.Open()
        Port.Write("2")
        Port.Close()
    End Sub

    Private Sub cmd_efect3_Click(sender As Object, e As EventArgs) Handles cmd_efect3.Click
        Port.Open()
        Port.Write("3")
        Port.Close()
    End Sub

    Private Sub cmd_efect4_Click(sender As Object, e As EventArgs) Handles cmd_efect4.Click
        Port.Open()
        Port.Write("4")
        Port.Close()
    End Sub

    Private Sub cmd_pornit_Click(sender As Object, e As EventArgs) Handles cmd_pornit.Click
        Port.Open()
        Port.Write("P")
        Port.Close()
    End Sub

    Private Sub cmd_oprit_Click(sender As Object, e As EventArgs) Handles cmd_oprit.Click
        Port.Open()
        Port.Write("O")
        Port.Close()
    End Sub

    Private Sub cmd_fast_Click(sender As Object, e As EventArgs) Handles cmd_fast.Click
        Port.Open()
        Port.Write("F")
        Port.Close()
    End Sub

    Private Sub cmd_slow_Click(sender As Object, e As EventArgs) Handles cmd_slow.Click
        Port.Open()
        Port.Write("W")
        Port.Close()
    End Sub

    Private Sub cmd_aprinde_Click(sender As Object, e As EventArgs) Handles cmd_aprinde.Click
        Port.Open()
        Port.Write("A")
        Port.Close()
    End Sub

    Private Sub cmd_stinge_Click(sender As Object, e As EventArgs) Handles cmd_stinge.Click
        Port.Open()
        Port.Write("S")
        Port.Close()
    End Sub
End Class