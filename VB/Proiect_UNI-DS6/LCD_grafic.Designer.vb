<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Partial Class LCD_grafic
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
        Me.cmd_resetare_glcd = New System.Windows.Forms.Button()
        Me.cmd_oprire_glcd = New System.Windows.Forms.Button()
        Me.cmd_pornire_glcd = New System.Windows.Forms.Button()
        Me.Label1 = New System.Windows.Forms.Label()
        Me.cmd_iesire_glcd = New System.Windows.Forms.Button()
        Me.SerialPort1 = New System.IO.Ports.SerialPort(Me.components)
        Me.GroupBox1.SuspendLayout()
        Me.SuspendLayout()
        '
        'GroupBox1
        '
        Me.GroupBox1.BackColor = System.Drawing.Color.Transparent
        Me.GroupBox1.Controls.Add(Me.Label4)
        Me.GroupBox1.Controls.Add(Me.Label3)
        Me.GroupBox1.Controls.Add(Me.Label2)
        Me.GroupBox1.Controls.Add(Me.cmd_resetare_glcd)
        Me.GroupBox1.Controls.Add(Me.cmd_oprire_glcd)
        Me.GroupBox1.Controls.Add(Me.cmd_pornire_glcd)
        Me.GroupBox1.Font = New System.Drawing.Font("Microsoft Sans Serif", 7.8!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.GroupBox1.ForeColor = System.Drawing.Color.White
        Me.GroupBox1.Location = New System.Drawing.Point(103, 177)
        Me.GroupBox1.Margin = New System.Windows.Forms.Padding(3, 2, 3, 2)
        Me.GroupBox1.Name = "GroupBox1"
        Me.GroupBox1.Padding = New System.Windows.Forms.Padding(3, 2, 3, 2)
        Me.GroupBox1.Size = New System.Drawing.Size(595, 103)
        Me.GroupBox1.TabIndex = 0
        Me.GroupBox1.TabStop = False
        Me.GroupBox1.Text = "Comenzi cronometru"
        '
        'Label4
        '
        Me.Label4.AutoSize = True
        Me.Label4.Location = New System.Drawing.Point(461, 75)
        Me.Label4.Name = "Label4"
        Me.Label4.Size = New System.Drawing.Size(19, 17)
        Me.Label4.TabIndex = 5
        Me.Label4.Text = "R"
        '
        'Label3
        '
        Me.Label3.AutoSize = True
        Me.Label3.Location = New System.Drawing.Point(289, 75)
        Me.Label3.Name = "Label3"
        Me.Label3.Size = New System.Drawing.Size(20, 17)
        Me.Label3.TabIndex = 4
        Me.Label3.Text = "O"
        '
        'Label2
        '
        Me.Label2.AutoSize = True
        Me.Label2.Location = New System.Drawing.Point(117, 75)
        Me.Label2.Name = "Label2"
        Me.Label2.Size = New System.Drawing.Size(18, 17)
        Me.Label2.TabIndex = 3
        Me.Label2.Text = "P"
        '
        'cmd_resetare_glcd
        '
        Me.cmd_resetare_glcd.BackColor = System.Drawing.Color.White
        Me.cmd_resetare_glcd.Font = New System.Drawing.Font("Microsoft Sans Serif", 7.8!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.cmd_resetare_glcd.ForeColor = System.Drawing.Color.Black
        Me.cmd_resetare_glcd.Location = New System.Drawing.Point(395, 28)
        Me.cmd_resetare_glcd.Margin = New System.Windows.Forms.Padding(3, 2, 3, 2)
        Me.cmd_resetare_glcd.Name = "cmd_resetare_glcd"
        Me.cmd_resetare_glcd.Size = New System.Drawing.Size(149, 39)
        Me.cmd_resetare_glcd.TabIndex = 2
        Me.cmd_resetare_glcd.Text = "&Resetare"
        Me.cmd_resetare_glcd.UseVisualStyleBackColor = False
        '
        'cmd_oprire_glcd
        '
        Me.cmd_oprire_glcd.BackColor = System.Drawing.Color.White
        Me.cmd_oprire_glcd.Font = New System.Drawing.Font("Microsoft Sans Serif", 7.8!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.cmd_oprire_glcd.ForeColor = System.Drawing.Color.Black
        Me.cmd_oprire_glcd.Location = New System.Drawing.Point(223, 28)
        Me.cmd_oprire_glcd.Margin = New System.Windows.Forms.Padding(3, 2, 3, 2)
        Me.cmd_oprire_glcd.Name = "cmd_oprire_glcd"
        Me.cmd_oprire_glcd.Size = New System.Drawing.Size(149, 39)
        Me.cmd_oprire_glcd.TabIndex = 1
        Me.cmd_oprire_glcd.Text = "&Oprire"
        Me.cmd_oprire_glcd.UseVisualStyleBackColor = False
        '
        'cmd_pornire_glcd
        '
        Me.cmd_pornire_glcd.BackColor = System.Drawing.Color.White
        Me.cmd_pornire_glcd.Font = New System.Drawing.Font("Microsoft Sans Serif", 7.8!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.cmd_pornire_glcd.ForeColor = System.Drawing.Color.Black
        Me.cmd_pornire_glcd.Location = New System.Drawing.Point(51, 28)
        Me.cmd_pornire_glcd.Margin = New System.Windows.Forms.Padding(3, 2, 3, 2)
        Me.cmd_pornire_glcd.Name = "cmd_pornire_glcd"
        Me.cmd_pornire_glcd.Size = New System.Drawing.Size(149, 39)
        Me.cmd_pornire_glcd.TabIndex = 0
        Me.cmd_pornire_glcd.Text = "&Pornire"
        Me.cmd_pornire_glcd.UseVisualStyleBackColor = False
        '
        'Label1
        '
        Me.Label1.AutoSize = True
        Me.Label1.BackColor = System.Drawing.Color.Transparent
        Me.Label1.Font = New System.Drawing.Font("Microsoft Sans Serif", 12.0!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Label1.ForeColor = System.Drawing.Color.LightSkyBlue
        Me.Label1.Location = New System.Drawing.Point(332, 139)
        Me.Label1.Name = "Label1"
        Me.Label1.Size = New System.Drawing.Size(125, 25)
        Me.Label1.TabIndex = 1
        Me.Label1.Text = "Cronometru"
        '
        'cmd_iesire_glcd
        '
        Me.cmd_iesire_glcd.BackColor = System.Drawing.Color.White
        Me.cmd_iesire_glcd.Font = New System.Drawing.Font("Microsoft Sans Serif", 10.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.cmd_iesire_glcd.ForeColor = System.Drawing.Color.Black
        Me.cmd_iesire_glcd.Location = New System.Drawing.Point(668, 395)
        Me.cmd_iesire_glcd.Margin = New System.Windows.Forms.Padding(3, 2, 3, 2)
        Me.cmd_iesire_glcd.Name = "cmd_iesire_glcd"
        Me.cmd_iesire_glcd.Size = New System.Drawing.Size(120, 43)
        Me.cmd_iesire_glcd.TabIndex = 5
        Me.cmd_iesire_glcd.Text = "&Ieșire"
        Me.cmd_iesire_glcd.UseVisualStyleBackColor = False
        '
        'LCD_grafic
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(8.0!, 16.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.BackColor = System.Drawing.Color.SeaShell
        Me.BackgroundImage = Global.Proiect_UNI_DS6.My.Resources.Resources.background
        Me.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Center
        Me.ClientSize = New System.Drawing.Size(800, 450)
        Me.Controls.Add(Me.cmd_iesire_glcd)
        Me.Controls.Add(Me.Label1)
        Me.Controls.Add(Me.GroupBox1)
        Me.Margin = New System.Windows.Forms.Padding(3, 2, 3, 2)
        Me.Name = "LCD_grafic"
        Me.Text = "Sistem de afișare cu LCD de tip grafic"
        Me.GroupBox1.ResumeLayout(False)
        Me.GroupBox1.PerformLayout()
        Me.ResumeLayout(False)
        Me.PerformLayout()

    End Sub

    Friend WithEvents GroupBox1 As GroupBox
    Friend WithEvents Label4 As Label
    Friend WithEvents Label3 As Label
    Friend WithEvents Label2 As Label
    Friend WithEvents cmd_resetare_glcd As Button
    Friend WithEvents cmd_oprire_glcd As Button
    Friend WithEvents cmd_pornire_glcd As Button
    Friend WithEvents Label1 As Label
    Friend WithEvents cmd_iesire_glcd As Button
    Friend WithEvents SerialPort1 As IO.Ports.SerialPort
End Class
