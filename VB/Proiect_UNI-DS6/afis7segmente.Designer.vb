<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Partial Class afis7segmente
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
        Me.cmd_iesire_c = New System.Windows.Forms.Button()
        Me.GroupBox3 = New System.Windows.Forms.GroupBox()
        Me.Label11 = New System.Windows.Forms.Label()
        Me.Label12 = New System.Windows.Forms.Label()
        Me.cmd_stinge_c = New System.Windows.Forms.Button()
        Me.cmd_aprinde_c = New System.Windows.Forms.Button()
        Me.GroupBox2 = New System.Windows.Forms.GroupBox()
        Me.Label5 = New System.Windows.Forms.Label()
        Me.Label6 = New System.Windows.Forms.Label()
        Me.Label7 = New System.Windows.Forms.Label()
        Me.Label8 = New System.Windows.Forms.Label()
        Me.cmd_slow_c = New System.Windows.Forms.Button()
        Me.cmd_fast_c = New System.Windows.Forms.Button()
        Me.cmd_oprit_c = New System.Windows.Forms.Button()
        Me.cmd_pornit_c = New System.Windows.Forms.Button()
        Me.GroupBox1 = New System.Windows.Forms.GroupBox()
        Me.Label1 = New System.Windows.Forms.Label()
        Me.Label2 = New System.Windows.Forms.Label()
        Me.Button1 = New System.Windows.Forms.Button()
        Me.Button2 = New System.Windows.Forms.Button()
        Me.Label3 = New System.Windows.Forms.Label()
        Me.SerialPort1 = New System.IO.Ports.SerialPort(Me.components)
        Me.GroupBox3.SuspendLayout()
        Me.GroupBox2.SuspendLayout()
        Me.GroupBox1.SuspendLayout()
        Me.SuspendLayout()
        '
        'cmd_iesire_c
        '
        Me.cmd_iesire_c.BackColor = System.Drawing.Color.White
        Me.cmd_iesire_c.Font = New System.Drawing.Font("Microsoft Sans Serif", 10.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.cmd_iesire_c.Location = New System.Drawing.Point(668, 395)
        Me.cmd_iesire_c.Margin = New System.Windows.Forms.Padding(3, 2, 3, 2)
        Me.cmd_iesire_c.Name = "cmd_iesire_c"
        Me.cmd_iesire_c.Size = New System.Drawing.Size(120, 43)
        Me.cmd_iesire_c.TabIndex = 10
        Me.cmd_iesire_c.Text = "&Ieșire"
        Me.cmd_iesire_c.UseVisualStyleBackColor = False
        '
        'GroupBox3
        '
        Me.GroupBox3.BackColor = System.Drawing.Color.Transparent
        Me.GroupBox3.Controls.Add(Me.Label11)
        Me.GroupBox3.Controls.Add(Me.Label12)
        Me.GroupBox3.Controls.Add(Me.cmd_stinge_c)
        Me.GroupBox3.Controls.Add(Me.cmd_aprinde_c)
        Me.GroupBox3.Font = New System.Drawing.Font("Microsoft Sans Serif", 7.8!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.GroupBox3.ForeColor = System.Drawing.Color.White
        Me.GroupBox3.Location = New System.Drawing.Point(552, 153)
        Me.GroupBox3.Margin = New System.Windows.Forms.Padding(3, 2, 3, 2)
        Me.GroupBox3.Name = "GroupBox3"
        Me.GroupBox3.Padding = New System.Windows.Forms.Padding(3, 2, 3, 2)
        Me.GroupBox3.Size = New System.Drawing.Size(203, 178)
        Me.GroupBox3.TabIndex = 9
        Me.GroupBox3.TabStop = False
        Me.GroupBox3.Text = "Direcția de deplasare a textului"
        '
        'Label11
        '
        Me.Label11.AutoSize = True
        Me.Label11.Location = New System.Drawing.Point(165, 127)
        Me.Label11.Name = "Label11"
        Me.Label11.Size = New System.Drawing.Size(19, 17)
        Me.Label11.TabIndex = 5
        Me.Label11.Text = "R"
        '
        'Label12
        '
        Me.Label12.AutoSize = True
        Me.Label12.Location = New System.Drawing.Point(165, 60)
        Me.Label12.Name = "Label12"
        Me.Label12.Size = New System.Drawing.Size(17, 17)
        Me.Label12.TabIndex = 4
        Me.Label12.Text = "L"
        '
        'cmd_stinge_c
        '
        Me.cmd_stinge_c.BackColor = System.Drawing.Color.White
        Me.cmd_stinge_c.Font = New System.Drawing.Font("Microsoft Sans Serif", 10.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.cmd_stinge_c.ForeColor = System.Drawing.Color.Black
        Me.cmd_stinge_c.Location = New System.Drawing.Point(27, 113)
        Me.cmd_stinge_c.Margin = New System.Windows.Forms.Padding(3, 2, 3, 2)
        Me.cmd_stinge_c.Name = "cmd_stinge_c"
        Me.cmd_stinge_c.Size = New System.Drawing.Size(120, 43)
        Me.cmd_stinge_c.TabIndex = 1
        Me.cmd_stinge_c.Text = "Dreapta"
        Me.cmd_stinge_c.UseVisualStyleBackColor = False
        '
        'cmd_aprinde_c
        '
        Me.cmd_aprinde_c.BackColor = System.Drawing.Color.White
        Me.cmd_aprinde_c.Font = New System.Drawing.Font("Microsoft Sans Serif", 10.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.cmd_aprinde_c.ForeColor = System.Drawing.Color.Black
        Me.cmd_aprinde_c.Location = New System.Drawing.Point(27, 46)
        Me.cmd_aprinde_c.Margin = New System.Windows.Forms.Padding(3, 2, 3, 2)
        Me.cmd_aprinde_c.Name = "cmd_aprinde_c"
        Me.cmd_aprinde_c.Size = New System.Drawing.Size(120, 43)
        Me.cmd_aprinde_c.TabIndex = 0
        Me.cmd_aprinde_c.Text = "Stânga"
        Me.cmd_aprinde_c.UseVisualStyleBackColor = False
        '
        'GroupBox2
        '
        Me.GroupBox2.BackColor = System.Drawing.Color.Transparent
        Me.GroupBox2.Controls.Add(Me.Label5)
        Me.GroupBox2.Controls.Add(Me.Label6)
        Me.GroupBox2.Controls.Add(Me.Label7)
        Me.GroupBox2.Controls.Add(Me.Label8)
        Me.GroupBox2.Controls.Add(Me.cmd_slow_c)
        Me.GroupBox2.Controls.Add(Me.cmd_fast_c)
        Me.GroupBox2.Controls.Add(Me.cmd_oprit_c)
        Me.GroupBox2.Controls.Add(Me.cmd_pornit_c)
        Me.GroupBox2.Font = New System.Drawing.Font("Microsoft Sans Serif", 7.8!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.GroupBox2.ForeColor = System.Drawing.Color.White
        Me.GroupBox2.Location = New System.Drawing.Point(299, 102)
        Me.GroupBox2.Margin = New System.Windows.Forms.Padding(3, 2, 3, 2)
        Me.GroupBox2.Name = "GroupBox2"
        Me.GroupBox2.Padding = New System.Windows.Forms.Padding(3, 2, 3, 2)
        Me.GroupBox2.Size = New System.Drawing.Size(203, 295)
        Me.GroupBox2.TabIndex = 8
        Me.GroupBox2.TabStop = False
        Me.GroupBox2.Text = "Control afișare"
        '
        'Label5
        '
        Me.Label5.AutoSize = True
        Me.Label5.Location = New System.Drawing.Point(157, 242)
        Me.Label5.Name = "Label5"
        Me.Label5.Size = New System.Drawing.Size(22, 17)
        Me.Label5.TabIndex = 7
        Me.Label5.Text = "W"
        '
        'Label6
        '
        Me.Label6.AutoSize = True
        Me.Label6.Location = New System.Drawing.Point(163, 178)
        Me.Label6.Name = "Label6"
        Me.Label6.Size = New System.Drawing.Size(17, 17)
        Me.Label6.TabIndex = 6
        Me.Label6.Text = "F"
        '
        'Label7
        '
        Me.Label7.AutoSize = True
        Me.Label7.Location = New System.Drawing.Point(163, 112)
        Me.Label7.Name = "Label7"
        Me.Label7.Size = New System.Drawing.Size(20, 17)
        Me.Label7.TabIndex = 5
        Me.Label7.Text = "O"
        '
        'Label8
        '
        Me.Label8.AutoSize = True
        Me.Label8.Location = New System.Drawing.Point(163, 46)
        Me.Label8.Name = "Label8"
        Me.Label8.Size = New System.Drawing.Size(18, 17)
        Me.Label8.TabIndex = 4
        Me.Label8.Text = "P"
        '
        'cmd_slow_c
        '
        Me.cmd_slow_c.BackColor = System.Drawing.Color.White
        Me.cmd_slow_c.Font = New System.Drawing.Font("Microsoft Sans Serif", 10.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.cmd_slow_c.ForeColor = System.Drawing.Color.Black
        Me.cmd_slow_c.Location = New System.Drawing.Point(23, 229)
        Me.cmd_slow_c.Margin = New System.Windows.Forms.Padding(3, 2, 3, 2)
        Me.cmd_slow_c.Name = "cmd_slow_c"
        Me.cmd_slow_c.Size = New System.Drawing.Size(120, 43)
        Me.cmd_slow_c.TabIndex = 3
        Me.cmd_slow_c.Text = "Slo&w"
        Me.cmd_slow_c.UseVisualStyleBackColor = False
        '
        'cmd_fast_c
        '
        Me.cmd_fast_c.BackColor = System.Drawing.Color.White
        Me.cmd_fast_c.Font = New System.Drawing.Font("Microsoft Sans Serif", 10.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.cmd_fast_c.ForeColor = System.Drawing.Color.Black
        Me.cmd_fast_c.Location = New System.Drawing.Point(23, 162)
        Me.cmd_fast_c.Margin = New System.Windows.Forms.Padding(3, 2, 3, 2)
        Me.cmd_fast_c.Name = "cmd_fast_c"
        Me.cmd_fast_c.Size = New System.Drawing.Size(120, 43)
        Me.cmd_fast_c.TabIndex = 2
        Me.cmd_fast_c.Text = "&Fast"
        Me.cmd_fast_c.UseVisualStyleBackColor = False
        '
        'cmd_oprit_c
        '
        Me.cmd_oprit_c.BackColor = System.Drawing.Color.White
        Me.cmd_oprit_c.Font = New System.Drawing.Font("Microsoft Sans Serif", 10.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.cmd_oprit_c.ForeColor = System.Drawing.Color.Black
        Me.cmd_oprit_c.Location = New System.Drawing.Point(23, 97)
        Me.cmd_oprit_c.Margin = New System.Windows.Forms.Padding(3, 2, 3, 2)
        Me.cmd_oprit_c.Name = "cmd_oprit_c"
        Me.cmd_oprit_c.Size = New System.Drawing.Size(120, 43)
        Me.cmd_oprit_c.TabIndex = 1
        Me.cmd_oprit_c.Text = "&Oprire"
        Me.cmd_oprit_c.UseVisualStyleBackColor = False
        '
        'cmd_pornit_c
        '
        Me.cmd_pornit_c.BackColor = System.Drawing.Color.White
        Me.cmd_pornit_c.Font = New System.Drawing.Font("Microsoft Sans Serif", 10.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.cmd_pornit_c.ForeColor = System.Drawing.Color.Black
        Me.cmd_pornit_c.Location = New System.Drawing.Point(23, 31)
        Me.cmd_pornit_c.Margin = New System.Windows.Forms.Padding(3, 2, 3, 2)
        Me.cmd_pornit_c.Name = "cmd_pornit_c"
        Me.cmd_pornit_c.Size = New System.Drawing.Size(120, 43)
        Me.cmd_pornit_c.TabIndex = 0
        Me.cmd_pornit_c.Text = "&Pornire"
        Me.cmd_pornit_c.UseVisualStyleBackColor = False
        '
        'GroupBox1
        '
        Me.GroupBox1.BackColor = System.Drawing.Color.Transparent
        Me.GroupBox1.Controls.Add(Me.Label1)
        Me.GroupBox1.Controls.Add(Me.Label2)
        Me.GroupBox1.Controls.Add(Me.Button1)
        Me.GroupBox1.Controls.Add(Me.Button2)
        Me.GroupBox1.Font = New System.Drawing.Font("Microsoft Sans Serif", 7.8!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.GroupBox1.ForeColor = System.Drawing.Color.White
        Me.GroupBox1.Location = New System.Drawing.Point(45, 153)
        Me.GroupBox1.Margin = New System.Windows.Forms.Padding(3, 2, 3, 2)
        Me.GroupBox1.Name = "GroupBox1"
        Me.GroupBox1.Padding = New System.Windows.Forms.Padding(3, 2, 3, 2)
        Me.GroupBox1.Size = New System.Drawing.Size(203, 178)
        Me.GroupBox1.TabIndex = 11
        Me.GroupBox1.TabStop = False
        Me.GroupBox1.Text = "Testare afișor"
        '
        'Label1
        '
        Me.Label1.AutoSize = True
        Me.Label1.Location = New System.Drawing.Point(165, 127)
        Me.Label1.Name = "Label1"
        Me.Label1.Size = New System.Drawing.Size(18, 17)
        Me.Label1.TabIndex = 5
        Me.Label1.Text = "S"
        '
        'Label2
        '
        Me.Label2.AutoSize = True
        Me.Label2.Location = New System.Drawing.Point(165, 60)
        Me.Label2.Name = "Label2"
        Me.Label2.Size = New System.Drawing.Size(18, 17)
        Me.Label2.TabIndex = 4
        Me.Label2.Text = "A"
        '
        'Button1
        '
        Me.Button1.BackColor = System.Drawing.Color.White
        Me.Button1.Font = New System.Drawing.Font("Microsoft Sans Serif", 10.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Button1.ForeColor = System.Drawing.Color.Black
        Me.Button1.Location = New System.Drawing.Point(27, 113)
        Me.Button1.Margin = New System.Windows.Forms.Padding(3, 2, 3, 2)
        Me.Button1.Name = "Button1"
        Me.Button1.Size = New System.Drawing.Size(120, 43)
        Me.Button1.TabIndex = 1
        Me.Button1.Text = "&Stinge"
        Me.Button1.UseVisualStyleBackColor = False
        '
        'Button2
        '
        Me.Button2.BackColor = System.Drawing.Color.White
        Me.Button2.Font = New System.Drawing.Font("Microsoft Sans Serif", 10.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Button2.ForeColor = System.Drawing.Color.Black
        Me.Button2.Location = New System.Drawing.Point(27, 46)
        Me.Button2.Margin = New System.Windows.Forms.Padding(3, 2, 3, 2)
        Me.Button2.Name = "Button2"
        Me.Button2.Size = New System.Drawing.Size(120, 43)
        Me.Button2.TabIndex = 0
        Me.Button2.Text = "&Aprinde"
        Me.Button2.UseVisualStyleBackColor = False
        '
        'Label3
        '
        Me.Label3.AutoSize = True
        Me.Label3.BackColor = System.Drawing.Color.Transparent
        Me.Label3.Font = New System.Drawing.Font("Microsoft Sans Serif", 12.0!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Label3.ForeColor = System.Drawing.Color.LightSkyBlue
        Me.Label3.Location = New System.Drawing.Point(291, 39)
        Me.Label3.Name = "Label3"
        Me.Label3.Size = New System.Drawing.Size(197, 25)
        Me.Label3.TabIndex = 12
        Me.Label3.Text = "Deplasarea textului"
        '
        'afis7segmente
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(8.0!, 16.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.BackColor = System.Drawing.Color.SeaShell
        Me.BackgroundImage = Global.Proiect_UNI_DS6.My.Resources.Resources.background
        Me.ClientSize = New System.Drawing.Size(800, 450)
        Me.Controls.Add(Me.Label3)
        Me.Controls.Add(Me.GroupBox1)
        Me.Controls.Add(Me.cmd_iesire_c)
        Me.Controls.Add(Me.GroupBox3)
        Me.Controls.Add(Me.GroupBox2)
        Me.Margin = New System.Windows.Forms.Padding(3, 2, 3, 2)
        Me.Name = "afis7segmente"
        Me.Text = "Sistem de afișare cu 7 segmente"
        Me.GroupBox3.ResumeLayout(False)
        Me.GroupBox3.PerformLayout()
        Me.GroupBox2.ResumeLayout(False)
        Me.GroupBox2.PerformLayout()
        Me.GroupBox1.ResumeLayout(False)
        Me.GroupBox1.PerformLayout()
        Me.ResumeLayout(False)
        Me.PerformLayout()

    End Sub

    Friend WithEvents cmd_iesire_c As Button
    Friend WithEvents GroupBox3 As GroupBox
    Friend WithEvents Label11 As Label
    Friend WithEvents Label12 As Label
    Friend WithEvents cmd_stinge_c As Button
    Friend WithEvents cmd_aprinde_c As Button
    Friend WithEvents GroupBox2 As GroupBox
    Friend WithEvents Label5 As Label
    Friend WithEvents Label6 As Label
    Friend WithEvents Label7 As Label
    Friend WithEvents Label8 As Label
    Friend WithEvents cmd_slow_c As Button
    Friend WithEvents cmd_fast_c As Button
    Friend WithEvents cmd_oprit_c As Button
    Friend WithEvents cmd_pornit_c As Button
    Friend WithEvents GroupBox1 As GroupBox
    Friend WithEvents Label1 As Label
    Friend WithEvents Label2 As Label
    Friend WithEvents Button1 As Button
    Friend WithEvents Button2 As Button
    Friend WithEvents Label3 As Label
    Friend WithEvents SerialPort1 As IO.Ports.SerialPort
End Class
