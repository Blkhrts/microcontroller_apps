Imports System.IO.Ports
Public Class Main
    Private Sub Main_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        Listadeporturi = IO.Ports.SerialPort.GetPortNames
        Port_s.Items.AddRange(Listadeporturi)
        Portsertxt = "COM"
        Port = New SerialPort(Portsertxt, 4800, Parity.None, 8, StopBits.One)
    End Sub

    Private Sub Port_s_SelectedIndexChanged(sender As Object, e As EventArgs) Handles Port_s.SelectedIndexChanged
        Portsertxt = Port_s.Text
    End Sub

    Private Sub IesireToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles IesireToolStripMenuItem.Click
        End
    End Sub

    Private Sub MatriceLEDAsamblareToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles MatriceLEDAsamblareToolStripMenuItem.Click
        LED_asamblare.Show()
    End Sub

    Private Sub MatriceLEDMikroCToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles MatriceLEDMikroCToolStripMenuItem.Click
        LED_mikroC.Show()
    End Sub

    Private Sub DespreProgramToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles DespreProgramToolStripMenuItem.Click
        Despre_program.Show()
    End Sub

    Private Sub LCDTextMikroCToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles LCDTextMikroCToolStripMenuItem.Click
        LCD_text.Show()
    End Sub

    Private Sub LCDGraficMikroCToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles LCDGraficMikroCToolStripMenuItem.Click
        LCD_grafic.Show()
    End Sub

    Private Sub SegmenteMikroCToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles SegmenteMikroCToolStripMenuItem.Click
        afis7segmente.Show()
    End Sub
End Class