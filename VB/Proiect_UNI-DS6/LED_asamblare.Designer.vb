<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Partial Class LED_asamblare
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
        Me.Label4 = New System.Windows.Forms.Label()
        Me.Label3 = New System.Windows.Forms.Label()
        Me.Label2 = New System.Windows.Forms.Label()
        Me.Label1 = New System.Windows.Forms.Label()
        Me.cmd_efect4 = New System.Windows.Forms.Button()
        Me.cmd_efect3 = New System.Windows.Forms.Button()
        Me.cmd_efect2 = New System.Windows.Forms.Button()
        Me.cmd_efect1 = New System.Windows.Forms.Button()
        Me.GroupBox2 = New System.Windows.Forms.GroupBox()
        Me.Label5 = New System.Windows.Forms.Label()
        Me.Label6 = New System.Windows.Forms.Label()
        Me.Label7 = New System.Windows.Forms.Label()
        Me.Label8 = New System.Windows.Forms.Label()
        Me.cmd_slow = New System.Windows.Forms.Button()
        Me.cmd_fast = New System.Windows.Forms.Button()
        Me.cmd_oprit = New System.Windows.Forms.Button()
        Me.cmd_pornit = New System.Windows.Forms.Button()
        Me.GroupBox3 = New System.Windows.Forms.GroupBox()
        Me.Label11 = New System.Windows.Forms.Label()
        Me.Label12 = New System.Windows.Forms.Label()
        Me.cmd_stinge = New System.Windows.Forms.Button()
        Me.cmd_aprinde = New System.Windows.Forms.Button()
        Me.cmd_iesire = New System.Windows.Forms.Button()
        Me.SerialPort1 = New System.IO.Ports.SerialPort(Me.components)
        Me.Label9 = New System.Windows.Forms.Label()
        Me.GroupBox1.SuspendLayout()
        Me.GroupBox2.SuspendLayout()
        Me.GroupBox3.SuspendLayout()
        Me.SuspendLayout()
        '
        'GroupBox1
        '
        Me.GroupBox1.BackColor = System.Drawing.Color.Transparent
        Me.GroupBox1.Controls.Add(Me.Label4)
        Me.GroupBox1.Controls.Add(Me.Label3)
        Me.GroupBox1.Controls.Add(Me.Label2)
        Me.GroupBox1.Controls.Add(Me.Label1)
        Me.GroupBox1.Controls.Add(Me.cmd_efect4)
        Me.GroupBox1.Controls.Add(Me.cmd_efect3)
        Me.GroupBox1.Controls.Add(Me.cmd_efect2)
        Me.GroupBox1.Controls.Add(Me.cmd_efect1)
        Me.GroupBox1.Font = New System.Drawing.Font("Microsoft Sans Serif", 7.8!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.GroupBox1.ForeColor = System.Drawing.Color.White
        Me.GroupBox1.Location = New System.Drawing.Point(36, 78)
        Me.GroupBox1.Margin = New System.Windows.Forms.Padding(3, 2, 3, 2)
        Me.GroupBox1.Name = "GroupBox1"
        Me.GroupBox1.Padding = New System.Windows.Forms.Padding(3, 2, 3, 2)
        Me.GroupBox1.Size = New System.Drawing.Size(203, 295)
        Me.GroupBox1.TabIndex = 0
        Me.GroupBox1.TabStop = False
        Me.GroupBox1.Text = "Efecte grafice"
        '
        'Label4
        '
        Me.Label4.AutoSize = True
        Me.Label4.Location = New System.Drawing.Point(163, 242)
        Me.Label4.Name = "Label4"
        Me.Label4.Size = New System.Drawing.Size(17, 17)
        Me.Label4.TabIndex = 7
        Me.Label4.Text = "4"
        '
        'Label3
        '
        Me.Label3.AutoSize = True
        Me.Label3.Location = New System.Drawing.Point(163, 178)
        Me.Label3.Name = "Label3"
        Me.Label3.Size = New System.Drawing.Size(17, 17)
        Me.Label3.TabIndex = 6
        Me.Label3.Text = "3"
        '
        'Label2
        '
        Me.Label2.AutoSize = True
        Me.Label2.Location = New System.Drawing.Point(163, 112)
        Me.Label2.Name = "Label2"
        Me.Label2.Size = New System.Drawing.Size(17, 17)
        Me.Label2.TabIndex = 5
        Me.Label2.Text = "2"
        '
        'Label1
        '
        Me.Label1.AutoSize = True
        Me.Label1.Location = New System.Drawing.Point(163, 46)
        Me.Label1.Name = "Label1"
        Me.Label1.Size = New System.Drawing.Size(17, 17)
        Me.Label1.TabIndex = 4
        Me.Label1.Text = "1"
        '
        'cmd_efect4
        '
        Me.cmd_efect4.BackColor = System.Drawing.Color.White
        Me.cmd_efect4.Font = New System.Drawing.Font("Microsoft Sans Serif", 10.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.cmd_efect4.ForeColor = System.Drawing.Color.Black
        Me.cmd_efect4.Location = New System.Drawing.Point(23, 229)
        Me.cmd_efect4.Margin = New System.Windows.Forms.Padding(3, 2, 3, 2)
        Me.cmd_efect4.Name = "cmd_efect4"
        Me.cmd_efect4.Size = New System.Drawing.Size(120, 43)
        Me.cmd_efect4.TabIndex = 3
        Me.cmd_efect4.Text = "Efect &4"
        Me.cmd_efect4.UseVisualStyleBackColor = False
        '
        'cmd_efect3
        '
        Me.cmd_efect3.BackColor = System.Drawing.Color.White
        Me.cmd_efect3.Font = New System.Drawing.Font("Microsoft Sans Serif", 10.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.cmd_efect3.ForeColor = System.Drawing.Color.Black
        Me.cmd_efect3.Location = New System.Drawing.Point(23, 162)
        Me.cmd_efect3.Margin = New System.Windows.Forms.Padding(3, 2, 3, 2)
        Me.cmd_efect3.Name = "cmd_efect3"
        Me.cmd_efect3.Size = New System.Drawing.Size(120, 43)
        Me.cmd_efect3.TabIndex = 2
        Me.cmd_efect3.Text = "Efect &3"
        Me.cmd_efect3.UseVisualStyleBackColor = False
        '
        'cmd_efect2
        '
        Me.cmd_efect2.BackColor = System.Drawing.Color.White
        Me.cmd_efect2.Font = New System.Drawing.Font("Microsoft Sans Serif", 10.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.cmd_efect2.ForeColor = System.Drawing.Color.Black
        Me.cmd_efect2.Location = New System.Drawing.Point(23, 97)
        Me.cmd_efect2.Margin = New System.Windows.Forms.Padding(3, 2, 3, 2)
        Me.cmd_efect2.Name = "cmd_efect2"
        Me.cmd_efect2.Size = New System.Drawing.Size(120, 43)
        Me.cmd_efect2.TabIndex = 1
        Me.cmd_efect2.Text = "Efect &2"
        Me.cmd_efect2.UseVisualStyleBackColor = False
        '
        'cmd_efect1
        '
        Me.cmd_efect1.BackColor = System.Drawing.Color.White
        Me.cmd_efect1.Font = New System.Drawing.Font("Microsoft Sans Serif", 10.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.cmd_efect1.ForeColor = System.Drawing.Color.Black
        Me.cmd_efect1.Location = New System.Drawing.Point(23, 31)
        Me.cmd_efect1.Margin = New System.Windows.Forms.Padding(3, 2, 3, 2)
        Me.cmd_efect1.Name = "cmd_efect1"
        Me.cmd_efect1.Size = New System.Drawing.Size(120, 43)
        Me.cmd_efect1.TabIndex = 0
        Me.cmd_efect1.Text = "Efect &1"
        Me.cmd_efect1.UseVisualStyleBackColor = False
        '
        'GroupBox2
        '
        Me.GroupBox2.BackColor = System.Drawing.Color.Transparent
        Me.GroupBox2.Controls.Add(Me.Label5)
        Me.GroupBox2.Controls.Add(Me.Label6)
        Me.GroupBox2.Controls.Add(Me.Label7)
        Me.GroupBox2.Controls.Add(Me.Label8)
        Me.GroupBox2.Controls.Add(Me.cmd_slow)
        Me.GroupBox2.Controls.Add(Me.cmd_fast)
        Me.GroupBox2.Controls.Add(Me.cmd_oprit)
        Me.GroupBox2.Controls.Add(Me.cmd_pornit)
        Me.GroupBox2.Font = New System.Drawing.Font("Microsoft Sans Serif", 7.8!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.GroupBox2.ForeColor = System.Drawing.Color.White
        Me.GroupBox2.Location = New System.Drawing.Point(299, 78)
        Me.GroupBox2.Margin = New System.Windows.Forms.Padding(3, 2, 3, 2)
        Me.GroupBox2.Name = "GroupBox2"
        Me.GroupBox2.Padding = New System.Windows.Forms.Padding(3, 2, 3, 2)
        Me.GroupBox2.Size = New System.Drawing.Size(203, 295)
        Me.GroupBox2.TabIndex = 1
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
        'cmd_slow
        '
        Me.cmd_slow.BackColor = System.Drawing.Color.White
        Me.cmd_slow.Font = New System.Drawing.Font("Microsoft Sans Serif", 10.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.cmd_slow.ForeColor = System.Drawing.Color.Black
        Me.cmd_slow.Location = New System.Drawing.Point(23, 229)
        Me.cmd_slow.Margin = New System.Windows.Forms.Padding(3, 2, 3, 2)
        Me.cmd_slow.Name = "cmd_slow"
        Me.cmd_slow.Size = New System.Drawing.Size(120, 43)
        Me.cmd_slow.TabIndex = 3
        Me.cmd_slow.Text = "Slo&w"
        Me.cmd_slow.UseVisualStyleBackColor = False
        '
        'cmd_fast
        '
        Me.cmd_fast.BackColor = System.Drawing.Color.White
        Me.cmd_fast.Font = New System.Drawing.Font("Microsoft Sans Serif", 10.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.cmd_fast.ForeColor = System.Drawing.Color.Black
        Me.cmd_fast.Location = New System.Drawing.Point(23, 162)
        Me.cmd_fast.Margin = New System.Windows.Forms.Padding(3, 2, 3, 2)
        Me.cmd_fast.Name = "cmd_fast"
        Me.cmd_fast.Size = New System.Drawing.Size(120, 43)
        Me.cmd_fast.TabIndex = 2
        Me.cmd_fast.Text = "&Fast"
        Me.cmd_fast.UseVisualStyleBackColor = False
        '
        'cmd_oprit
        '
        Me.cmd_oprit.BackColor = System.Drawing.Color.White
        Me.cmd_oprit.Font = New System.Drawing.Font("Microsoft Sans Serif", 10.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.cmd_oprit.ForeColor = System.Drawing.Color.Black
        Me.cmd_oprit.Location = New System.Drawing.Point(23, 97)
        Me.cmd_oprit.Margin = New System.Windows.Forms.Padding(3, 2, 3, 2)
        Me.cmd_oprit.Name = "cmd_oprit"
        Me.cmd_oprit.Size = New System.Drawing.Size(120, 43)
        Me.cmd_oprit.TabIndex = 1
        Me.cmd_oprit.Text = "&Oprire"
        Me.cmd_oprit.UseVisualStyleBackColor = False
        '
        'cmd_pornit
        '
        Me.cmd_pornit.BackColor = System.Drawing.Color.White
        Me.cmd_pornit.Font = New System.Drawing.Font("Microsoft Sans Serif", 10.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.cmd_pornit.ForeColor = System.Drawing.Color.Black
        Me.cmd_pornit.Location = New System.Drawing.Point(23, 31)
        Me.cmd_pornit.Margin = New System.Windows.Forms.Padding(3, 2, 3, 2)
        Me.cmd_pornit.Name = "cmd_pornit"
        Me.cmd_pornit.Size = New System.Drawing.Size(120, 43)
        Me.cmd_pornit.TabIndex = 0
        Me.cmd_pornit.Text = "&Pornire"
        Me.cmd_pornit.UseVisualStyleBackColor = False
        '
        'GroupBox3
        '
        Me.GroupBox3.BackColor = System.Drawing.Color.Transparent
        Me.GroupBox3.Controls.Add(Me.Label11)
        Me.GroupBox3.Controls.Add(Me.Label12)
        Me.GroupBox3.Controls.Add(Me.cmd_stinge)
        Me.GroupBox3.Controls.Add(Me.cmd_aprinde)
        Me.GroupBox3.Font = New System.Drawing.Font("Microsoft Sans Serif", 7.8!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.GroupBox3.ForeColor = System.Drawing.Color.White
        Me.GroupBox3.Location = New System.Drawing.Point(563, 78)
        Me.GroupBox3.Margin = New System.Windows.Forms.Padding(3, 2, 3, 2)
        Me.GroupBox3.Name = "GroupBox3"
        Me.GroupBox3.Padding = New System.Windows.Forms.Padding(3, 2, 3, 2)
        Me.GroupBox3.Size = New System.Drawing.Size(203, 162)
        Me.GroupBox3.TabIndex = 2
        Me.GroupBox3.TabStop = False
        Me.GroupBox3.Text = "Testare afișor"
        '
        'Label11
        '
        Me.Label11.AutoSize = True
        Me.Label11.Location = New System.Drawing.Point(163, 112)
        Me.Label11.Name = "Label11"
        Me.Label11.Size = New System.Drawing.Size(18, 17)
        Me.Label11.TabIndex = 5
        Me.Label11.Text = "S"
        '
        'Label12
        '
        Me.Label12.AutoSize = True
        Me.Label12.Location = New System.Drawing.Point(163, 46)
        Me.Label12.Name = "Label12"
        Me.Label12.Size = New System.Drawing.Size(18, 17)
        Me.Label12.TabIndex = 4
        Me.Label12.Text = "A"
        '
        'cmd_stinge
        '
        Me.cmd_stinge.BackColor = System.Drawing.Color.White
        Me.cmd_stinge.Font = New System.Drawing.Font("Microsoft Sans Serif", 10.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.cmd_stinge.ForeColor = System.Drawing.Color.Black
        Me.cmd_stinge.Location = New System.Drawing.Point(23, 98)
        Me.cmd_stinge.Margin = New System.Windows.Forms.Padding(3, 2, 3, 2)
        Me.cmd_stinge.Name = "cmd_stinge"
        Me.cmd_stinge.Size = New System.Drawing.Size(120, 43)
        Me.cmd_stinge.TabIndex = 1
        Me.cmd_stinge.Text = "&Stinge"
        Me.cmd_stinge.UseVisualStyleBackColor = False
        '
        'cmd_aprinde
        '
        Me.cmd_aprinde.BackColor = System.Drawing.Color.White
        Me.cmd_aprinde.Font = New System.Drawing.Font("Microsoft Sans Serif", 10.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.cmd_aprinde.ForeColor = System.Drawing.Color.Black
        Me.cmd_aprinde.Location = New System.Drawing.Point(23, 31)
        Me.cmd_aprinde.Margin = New System.Windows.Forms.Padding(3, 2, 3, 2)
        Me.cmd_aprinde.Name = "cmd_aprinde"
        Me.cmd_aprinde.Size = New System.Drawing.Size(120, 43)
        Me.cmd_aprinde.TabIndex = 0
        Me.cmd_aprinde.Text = "&Aprinde"
        Me.cmd_aprinde.UseVisualStyleBackColor = False
        '
        'cmd_iesire
        '
        Me.cmd_iesire.BackColor = System.Drawing.Color.White
        Me.cmd_iesire.Font = New System.Drawing.Font("Microsoft Sans Serif", 10.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.cmd_iesire.Location = New System.Drawing.Point(668, 395)
        Me.cmd_iesire.Margin = New System.Windows.Forms.Padding(3, 2, 3, 2)
        Me.cmd_iesire.Name = "cmd_iesire"
        Me.cmd_iesire.Size = New System.Drawing.Size(120, 43)
        Me.cmd_iesire.TabIndex = 3
        Me.cmd_iesire.Text = "&Ieșire"
        Me.cmd_iesire.UseVisualStyleBackColor = False
        '
        'Label9
        '
        Me.Label9.AutoSize = True
        Me.Label9.BackColor = System.Drawing.Color.Transparent
        Me.Label9.Font = New System.Drawing.Font("Microsoft Sans Serif", 12.0!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Label9.ForeColor = System.Drawing.Color.LightSkyBlue
        Me.Label9.Location = New System.Drawing.Point(199, 30)
        Me.Label9.Name = "Label9"
        Me.Label9.Size = New System.Drawing.Size(364, 25)
        Me.Label9.TabIndex = 9
        Me.Label9.Text = "Efecte LED-uri - limbaj de asamblare"
        '
        'LED_asamblare
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(8.0!, 16.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.BackColor = System.Drawing.Color.SeaShell
        Me.BackgroundImage = Global.Proiect_UNI_DS6.My.Resources.Resources.background
        Me.ClientSize = New System.Drawing.Size(800, 450)
        Me.Controls.Add(Me.Label9)
        Me.Controls.Add(Me.cmd_iesire)
        Me.Controls.Add(Me.GroupBox3)
        Me.Controls.Add(Me.GroupBox2)
        Me.Controls.Add(Me.GroupBox1)
        Me.Margin = New System.Windows.Forms.Padding(3, 2, 3, 2)
        Me.Name = "LED_asamblare"
        Me.Text = "Sistem de afișare cu matrice LED - programare în limbaj de asamblare"
        Me.GroupBox1.ResumeLayout(False)
        Me.GroupBox1.PerformLayout()
        Me.GroupBox2.ResumeLayout(False)
        Me.GroupBox2.PerformLayout()
        Me.GroupBox3.ResumeLayout(False)
        Me.GroupBox3.PerformLayout()
        Me.ResumeLayout(False)
        Me.PerformLayout()

    End Sub

    Friend WithEvents GroupBox1 As GroupBox
    Friend WithEvents cmd_efect4 As Button
    Friend WithEvents cmd_efect3 As Button
    Friend WithEvents cmd_efect2 As Button
    Friend WithEvents cmd_efect1 As Button
    Friend WithEvents Label1 As Label
    Friend WithEvents Label4 As Label
    Friend WithEvents Label3 As Label
    Friend WithEvents Label2 As Label
    Friend WithEvents GroupBox2 As GroupBox
    Friend WithEvents Label5 As Label
    Friend WithEvents Label6 As Label
    Friend WithEvents Label7 As Label
    Friend WithEvents Label8 As Label
    Friend WithEvents cmd_slow As Button
    Friend WithEvents cmd_fast As Button
    Friend WithEvents cmd_oprit As Button
    Friend WithEvents cmd_pornit As Button
    Friend WithEvents GroupBox3 As GroupBox
    Friend WithEvents Label11 As Label
    Friend WithEvents Label12 As Label
    Friend WithEvents cmd_stinge As Button
    Friend WithEvents cmd_aprinde As Button
    Friend WithEvents cmd_iesire As Button
    Friend WithEvents SerialPort1 As IO.Ports.SerialPort
    Friend WithEvents Label9 As Label
End Class
