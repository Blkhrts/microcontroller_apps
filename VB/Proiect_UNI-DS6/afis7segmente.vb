Imports System.IO.Ports
Public Class afis7segmente
    Private Sub _7segmente_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        Port = New SerialPort(Portsertxt, 4800, Parity.None, 8, StopBits.One)
    End Sub

    Private Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click
        Port.Open()
        Port.Write("A")
        Port.Close()
    End Sub

    Private Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Port.Open()
        Port.Write("S")
        Port.Close()
    End Sub

    Private Sub cmd_pornit_c_Click(sender As Object, e As EventArgs) Handles cmd_pornit_c.Click
        Port.Open()
        Port.Write("P")
        Port.Close()
    End Sub

    Private Sub cmd_oprit_c_Click(sender As Object, e As EventArgs) Handles cmd_oprit_c.Click
        Port.Open()
        Port.Write("O")
        Port.Close()
    End Sub

    Private Sub cmd_fast_c_Click(sender As Object, e As EventArgs) Handles cmd_fast_c.Click
        Port.Open()
        Port.Write("F")
        Port.Close()
    End Sub

    Private Sub cmd_slow_c_Click(sender As Object, e As EventArgs) Handles cmd_slow_c.Click
        Port.Open()
        Port.Write("W")
        Port.Close()
    End Sub

    Private Sub cmd_aprinde_c_Click(sender As Object, e As EventArgs) Handles cmd_aprinde_c.Click
        Port.Open()
        Port.Write("L")
        Port.Close()
    End Sub

    Private Sub cmd_stinge_c_Click(sender As Object, e As EventArgs) Handles cmd_stinge_c.Click
        Port.Open()
        Port.Write("R")
        Port.Close()
    End Sub

    Private Sub cmd_iesire_c_Click(sender As Object, e As EventArgs) Handles cmd_iesire_c.Click
        Close()
    End Sub
End Class