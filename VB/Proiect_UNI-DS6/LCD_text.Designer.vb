<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Partial Class LCD_text
    Inherits System.Windows.Forms.Form

    'Form overrides dispose to clean up the component list.
    <System.Diagnostics.DebuggerNonUserCode()> _
    Protected Overrides Sub Dispose(ByVal disposing As Boolean)
        Try
            If disposing AndAlso components IsNot Nothing Then
                components.Dispose()
            End If
        Finally
            MyBase.Dispose(disposing)
        End Try
    End Sub

    'Required by the Windows Form Designer
    Private components As System.ComponentModel.IContainer

    'NOTE: The following procedure is required by the Windows Form Designer
    'It can be modified using the Windows Form Designer.  
    'Do not modify it using the code editor.
    <System.Diagnostics.DebuggerStepThrough()> _
    Private Sub InitializeComponent()
        Me.components = New System.ComponentModel.Container()
        Me.GroupBox1 = New System.Windows.Forms.GroupBox()
        Me.Label5 = New System.Windows.Forms.Label()
        Me.Label4 = New System.Windows.Forms.Label()
        Me.Label3 = New System.Windows.Forms.Label()
        Me.Label2 = New System.Windows.Forms.Label()
        Me.cmd_single = New System.Windows.Forms.Button()
        Me.cmd_conti_off = New System.Windows.Forms.Button()
        Me.cmd_clear = New System.Windows.Forms.Button()
        Me.cmd_conti_on = New System.Windows.Forms.Button()
        Me.Label1 = New System.Windows.Forms.Label()
        Me.cmd_iesire_tlcd = New System.Windows.Forms.Button()
        Me.SerialPort1 = New System.IO.Ports.SerialPort(Me.components)
        Me.GroupBox1.SuspendLayout()
        Me.SuspendLayout()
        '
        'GroupBox1
        '
        Me.GroupBox1.BackColor = System.Drawing.Color.Transparent
        Me.GroupBox1.Controls.Add(Me.Label5)
        Me.GroupBox1.Controls.Add(Me.Label4)
        Me.GroupBox1.Controls.Add(Me.Label3)
        Me.GroupBox1.Controls.Add(Me.Label2)
        Me.GroupBox1.Controls.Add(Me.cmd_single)
        Me.GroupBox1.Controls.Add(Me.cmd_conti_off)
        Me.GroupBox1.Controls.Add(Me.cmd_clear)
        Me.GroupBox1.Controls.Add(Me.cmd_conti_on)
        Me.GroupBox1.Font = New System.Drawing.Font("Microsoft Sans Serif", 7.8!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.GroupBox1.ForeColor = System.Drawing.Color.White
        Me.GroupBox1.Location = New System.Drawing.Point(169, 96)
        Me.GroupBox1.Margin = New System.Windows.Forms.Padding(3, 2, 3, 2)
        Me.GroupBox1.Name = "GroupBox1"
        Me.GroupBox1.Padding = New System.Windows.Forms.Padding(3, 2, 3, 2)
        Me.GroupBox1.Size = New System.Drawing.Size(461, 258)
        Me.GroupBox1.TabIndex = 0
        Me.GroupBox1.TabStop = False
        Me.GroupBox1.Text = "Moduri de măsurare"
        '
        'Label5
        '
        Me.Label5.AutoSize = True
        Me.Label5.Location = New System.Drawing.Point(332, 203)
        Me.Label5.Name = "Label5"
        Me.Label5.Size = New System.Drawing.Size(18, 17)
        Me.Label5.TabIndex = 11
        Me.Label5.Text = "X"
        '
        'Label4
        '
        Me.Label4.AutoSize = True
        Me.Label4.Location = New System.Drawing.Point(332, 38)
        Me.Label4.Name = "Label4"
        Me.Label4.Size = New System.Drawing.Size(18, 17)
        Me.Label4.TabIndex = 10
        Me.Label4.Text = "S"
        '
        'Label3
        '
        Me.Label3.AutoSize = True
        Me.Label3.Location = New System.Drawing.Point(116, 203)
        Me.Label3.Name = "Label3"
        Me.Label3.Size = New System.Drawing.Size(17, 17)
        Me.Label3.TabIndex = 9
        Me.Label3.Text = "F"
        '
        'Label2
        '
        Me.Label2.AutoSize = True
        Me.Label2.Location = New System.Drawing.Point(116, 38)
        Me.Label2.Name = "Label2"
        Me.Label2.Size = New System.Drawing.Size(20, 17)
        Me.Label2.TabIndex = 8
        Me.Label2.Text = "O"
        '
        'cmd_single
        '
        Me.cmd_single.BackColor = System.Drawing.Color.White
        Me.cmd_single.Font = New System.Drawing.Font("Microsoft Sans Serif", 10.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.cmd_single.ForeColor = System.Drawing.Color.Black
        Me.cmd_single.Location = New System.Drawing.Point(255, 58)
        Me.cmd_single.Margin = New System.Windows.Forms.Padding(3, 2, 3, 2)
        Me.cmd_single.Name = "cmd_single"
        Me.cmd_single.Size = New System.Drawing.Size(172, 43)
        Me.cmd_single.TabIndex = 7
        Me.cmd_single.Text = "Modul &Single"
        Me.cmd_single.UseVisualStyleBackColor = False
        '
        'cmd_conti_off
        '
        Me.cmd_conti_off.BackColor = System.Drawing.Color.White
        Me.cmd_conti_off.Font = New System.Drawing.Font("Microsoft Sans Serif", 10.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.cmd_conti_off.ForeColor = System.Drawing.Color.Black
        Me.cmd_conti_off.Location = New System.Drawing.Point(36, 158)
        Me.cmd_conti_off.Margin = New System.Windows.Forms.Padding(3, 2, 3, 2)
        Me.cmd_conti_off.Name = "cmd_conti_off"
        Me.cmd_conti_off.Size = New System.Drawing.Size(172, 43)
        Me.cmd_conti_off.TabIndex = 6
        Me.cmd_conti_off.Text = "Modul Continuu O&FF"
        Me.cmd_conti_off.UseVisualStyleBackColor = False
        '
        'cmd_clear
        '
        Me.cmd_clear.BackColor = System.Drawing.Color.White
        Me.cmd_clear.Font = New System.Drawing.Font("Microsoft Sans Serif", 10.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.cmd_clear.ForeColor = System.Drawing.Color.Black
        Me.cmd_clear.Location = New System.Drawing.Point(255, 158)
        Me.cmd_clear.Margin = New System.Windows.Forms.Padding(3, 2, 3, 2)
        Me.cmd_clear.Name = "cmd_clear"
        Me.cmd_clear.Size = New System.Drawing.Size(172, 43)
        Me.cmd_clear.TabIndex = 5
        Me.cmd_clear.Text = "Modul Clear"
        Me.cmd_clear.UseVisualStyleBackColor = False
        '
        'cmd_conti_on
        '
        Me.cmd_conti_on.BackColor = System.Drawing.Color.White
        Me.cmd_conti_on.Font = New System.Drawing.Font("Microsoft Sans Serif", 10.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.cmd_conti_on.ForeColor = System.Drawing.Color.Black
        Me.cmd_conti_on.Location = New System.Drawing.Point(36, 58)
        Me.cmd_conti_on.Margin = New System.Windows.Forms.Padding(3, 2, 3, 2)
        Me.cmd_conti_on.Name = "cmd_conti_on"
        Me.cmd_conti_on.Size = New System.Drawing.Size(172, 43)
        Me.cmd_conti_on.TabIndex = 4
        Me.cmd_conti_on.Text = "Mod Continuu O&N"
        Me.cmd_conti_on.UseVisualStyleBackColor = False
        '
        'Label1
        '
        Me.Label1.AutoSize = True
        Me.Label1.BackColor = System.Drawing.Color.Transparent
        Me.Label1.Font = New System.Drawing.Font("Microsoft Sans Serif", 12.0!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Label1.ForeColor = System.Drawing.Color.LightSkyBlue
        Me.Label1.Location = New System.Drawing.Point(271, 42)
        Me.Label1.Name = "Label1"
        Me.Label1.Size = New System.Drawing.Size(234, 25)
        Me.Label1.TabIndex = 1
        Me.Label1.Text = "Măsurarea temperaturii"
        '
        'cmd_iesire_tlcd
        '
        Me.cmd_iesire_tlcd.BackColor = System.Drawing.Color.White
        Me.cmd_iesire_tlcd.Font = New System.Drawing.Font("Microsoft Sans Serif", 10.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.cmd_iesire_tlcd.ForeColor = System.Drawing.Color.Black
        Me.cmd_iesire_tlcd.Location = New System.Drawing.Point(668, 395)
        Me.cmd_iesire_tlcd.Margin = New System.Windows.Forms.Padding(3, 2, 3, 2)
        Me.cmd_iesire_tlcd.Name = "cmd_iesire_tlcd"
        Me.cmd_iesire_tlcd.Size = New System.Drawing.Size(120, 43)
        Me.cmd_iesire_tlcd.TabIndex = 4
        Me.cmd_iesire_tlcd.Text = "&Ieșire"
        Me.cmd_iesire_tlcd.UseVisualStyleBackColor = False
        '
        'LCD_text
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(8.0!, 16.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.BackColor = System.Drawing.Color.SeaShell
        Me.BackgroundImage = Global.Proiect_UNI_DS6.My.Resources.Resources.background
        Me.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Center
        Me.ClientSize = New System.Drawing.Size(800, 450)
        Me.Controls.Add(Me.cmd_iesire_tlcd)
        Me.Controls.Add(Me.Label1)
        Me.Controls.Add(Me.GroupBox1)
        Me.Margin = New System.Windows.Forms.Padding(3, 2, 3, 2)
        Me.Name = "LCD_text"
        Me.Text = "Sistem de afișare cu LCD de tip text"
        Me.GroupBox1.ResumeLayout(False)
        Me.GroupBox1.PerformLayout()
        Me.ResumeLayout(False)
        Me.PerformLayout()

    End Sub

    Friend WithEvents GroupBox1 As GroupBox
    Friend WithEvents Label1 As Label
    Friend WithEvents cmd_single As Button
    Friend WithEvents cmd_conti_off As Button
    Friend WithEvents cmd_clear As Button
    Friend WithEvents cmd_conti_on As Button
    Friend WithEvents cmd_iesire_tlcd As Button
    Friend WithEvents Label5 As Label
    Friend WithEvents Label4 As Label
    Friend WithEvents Label3 As Label
    Friend WithEvents Label2 As Label
    Friend WithEvents SerialPort1 As IO.Ports.SerialPort
End Class
