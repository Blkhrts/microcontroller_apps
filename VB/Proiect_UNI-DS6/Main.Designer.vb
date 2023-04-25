<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Partial Class Main
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
        Dim resources As System.ComponentModel.ComponentResourceManager = New System.ComponentModel.ComponentResourceManager(GetType(Main))
        Me.Label1 = New System.Windows.Forms.Label()
        Me.Label2 = New System.Windows.Forms.Label()
        Me.PictureBox1 = New System.Windows.Forms.PictureBox()
        Me.Port_s = New System.Windows.Forms.ComboBox()
        Me.SerialPort1 = New System.IO.Ports.SerialPort(Me.components)
        Me.MenuStrip1 = New System.Windows.Forms.MenuStrip()
        Me.AplicatiiAfisareToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem()
        Me.MatriceLEDAsamblareToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem()
        Me.MatriceLEDMikroCToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem()
        Me.SegmenteMikroCToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem()
        Me.LCDTextMikroCToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem()
        Me.LCDGraficMikroCToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem()
        Me.DespreProgramToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem()
        Me.IesireToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem()
        CType(Me.PictureBox1, System.ComponentModel.ISupportInitialize).BeginInit()
        Me.MenuStrip1.SuspendLayout()
        Me.SuspendLayout()
        '
        'Label1
        '
        Me.Label1.Anchor = CType((((System.Windows.Forms.AnchorStyles.Top Or System.Windows.Forms.AnchorStyles.Bottom) _
            Or System.Windows.Forms.AnchorStyles.Left) _
            Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
        Me.Label1.AutoSize = True
        Me.Label1.BackColor = System.Drawing.Color.Transparent
        Me.Label1.Font = New System.Drawing.Font("Microsoft Sans Serif", 16.2!, CType((System.Drawing.FontStyle.Bold Or System.Drawing.FontStyle.Underline), System.Drawing.FontStyle), System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Label1.ForeColor = System.Drawing.Color.LightSkyBlue
        Me.Label1.Location = New System.Drawing.Point(221, 47)
        Me.Label1.Margin = New System.Windows.Forms.Padding(4, 0, 4, 0)
        Me.Label1.Name = "Label1"
        Me.Label1.Size = New System.Drawing.Size(518, 32)
        Me.Label1.TabIndex = 0
        Me.Label1.Text = "Sisteme de afișare cu microcontroller"
        Me.Label1.TextAlign = System.Drawing.ContentAlignment.TopCenter
        '
        'Label2
        '
        Me.Label2.Anchor = CType((((System.Windows.Forms.AnchorStyles.Top Or System.Windows.Forms.AnchorStyles.Bottom) _
            Or System.Windows.Forms.AnchorStyles.Left) _
            Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
        Me.Label2.AutoSize = True
        Me.Label2.BackColor = System.Drawing.Color.Transparent
        Me.Label2.Font = New System.Drawing.Font("Microsoft Sans Serif", 12.0!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Label2.ForeColor = System.Drawing.Color.White
        Me.Label2.Location = New System.Drawing.Point(149, 507)
        Me.Label2.Margin = New System.Windows.Forms.Padding(4, 0, 4, 0)
        Me.Label2.Name = "Label2"
        Me.Label2.Size = New System.Drawing.Size(475, 25)
        Me.Label2.TabIndex = 1
        Me.Label2.Text = "Selectați portul de comunicație serială (COM...):"
        '
        'PictureBox1
        '
        Me.PictureBox1.Anchor = CType((((System.Windows.Forms.AnchorStyles.Top Or System.Windows.Forms.AnchorStyles.Bottom) _
            Or System.Windows.Forms.AnchorStyles.Left) _
            Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
        Me.PictureBox1.BackColor = System.Drawing.Color.Transparent
        Me.PictureBox1.Image = CType(resources.GetObject("PictureBox1.Image"), System.Drawing.Image)
        Me.PictureBox1.Location = New System.Drawing.Point(233, 108)
        Me.PictureBox1.Margin = New System.Windows.Forms.Padding(4, 4, 4, 4)
        Me.PictureBox1.Name = "PictureBox1"
        Me.PictureBox1.Size = New System.Drawing.Size(520, 358)
        Me.PictureBox1.SizeMode = System.Windows.Forms.PictureBoxSizeMode.StretchImage
        Me.PictureBox1.TabIndex = 2
        Me.PictureBox1.TabStop = False
        '
        'Port_s
        '
        Me.Port_s.Anchor = CType((((System.Windows.Forms.AnchorStyles.Top Or System.Windows.Forms.AnchorStyles.Bottom) _
            Or System.Windows.Forms.AnchorStyles.Left) _
            Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
        Me.Port_s.FormattingEnabled = True
        Me.Port_s.Location = New System.Drawing.Point(676, 507)
        Me.Port_s.Margin = New System.Windows.Forms.Padding(4, 4, 4, 4)
        Me.Port_s.Name = "Port_s"
        Me.Port_s.Size = New System.Drawing.Size(160, 24)
        Me.Port_s.TabIndex = 3
        '
        'MenuStrip1
        '
        Me.MenuStrip1.BackColor = System.Drawing.Color.Transparent
        Me.MenuStrip1.ImageScalingSize = New System.Drawing.Size(20, 20)
        Me.MenuStrip1.Items.AddRange(New System.Windows.Forms.ToolStripItem() {Me.AplicatiiAfisareToolStripMenuItem, Me.DespreProgramToolStripMenuItem, Me.IesireToolStripMenuItem})
        Me.MenuStrip1.Location = New System.Drawing.Point(0, 0)
        Me.MenuStrip1.Name = "MenuStrip1"
        Me.MenuStrip1.Padding = New System.Windows.Forms.Padding(5, 2, 0, 2)
        Me.MenuStrip1.Size = New System.Drawing.Size(987, 28)
        Me.MenuStrip1.TabIndex = 4
        Me.MenuStrip1.Text = "MenuStrip1"
        '
        'AplicatiiAfisareToolStripMenuItem
        '
        Me.AplicatiiAfisareToolStripMenuItem.BackColor = System.Drawing.Color.White
        Me.AplicatiiAfisareToolStripMenuItem.DropDownItems.AddRange(New System.Windows.Forms.ToolStripItem() {Me.MatriceLEDAsamblareToolStripMenuItem, Me.MatriceLEDMikroCToolStripMenuItem, Me.SegmenteMikroCToolStripMenuItem, Me.LCDTextMikroCToolStripMenuItem, Me.LCDGraficMikroCToolStripMenuItem})
        Me.AplicatiiAfisareToolStripMenuItem.Font = New System.Drawing.Font("Segoe UI Semibold", 9.0!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.AplicatiiAfisareToolStripMenuItem.ForeColor = System.Drawing.Color.Black
        Me.AplicatiiAfisareToolStripMenuItem.Name = "AplicatiiAfisareToolStripMenuItem"
        Me.AplicatiiAfisareToolStripMenuItem.Size = New System.Drawing.Size(127, 24)
        Me.AplicatiiAfisareToolStripMenuItem.Text = "Aplicații afișare"
        '
        'MatriceLEDAsamblareToolStripMenuItem
        '
        Me.MatriceLEDAsamblareToolStripMenuItem.Name = "MatriceLEDAsamblareToolStripMenuItem"
        Me.MatriceLEDAsamblareToolStripMenuItem.Size = New System.Drawing.Size(272, 26)
        Me.MatriceLEDAsamblareToolStripMenuItem.Text = "1. Matrice LED - asamblare"
        '
        'MatriceLEDMikroCToolStripMenuItem
        '
        Me.MatriceLEDMikroCToolStripMenuItem.Name = "MatriceLEDMikroCToolStripMenuItem"
        Me.MatriceLEDMikroCToolStripMenuItem.Size = New System.Drawing.Size(272, 26)
        Me.MatriceLEDMikroCToolStripMenuItem.Text = "2. Matrice LED - mikroC"
        '
        'SegmenteMikroCToolStripMenuItem
        '
        Me.SegmenteMikroCToolStripMenuItem.Name = "SegmenteMikroCToolStripMenuItem"
        Me.SegmenteMikroCToolStripMenuItem.Size = New System.Drawing.Size(272, 26)
        Me.SegmenteMikroCToolStripMenuItem.Text = "3. 7 segmente - mikroC"
        '
        'LCDTextMikroCToolStripMenuItem
        '
        Me.LCDTextMikroCToolStripMenuItem.Name = "LCDTextMikroCToolStripMenuItem"
        Me.LCDTextMikroCToolStripMenuItem.Size = New System.Drawing.Size(272, 26)
        Me.LCDTextMikroCToolStripMenuItem.Text = "4. LCD text - mikroC"
        '
        'LCDGraficMikroCToolStripMenuItem
        '
        Me.LCDGraficMikroCToolStripMenuItem.Name = "LCDGraficMikroCToolStripMenuItem"
        Me.LCDGraficMikroCToolStripMenuItem.Size = New System.Drawing.Size(272, 26)
        Me.LCDGraficMikroCToolStripMenuItem.Text = "5. LCD grafic - mikroC"
        '
        'DespreProgramToolStripMenuItem
        '
        Me.DespreProgramToolStripMenuItem.BackColor = System.Drawing.Color.White
        Me.DespreProgramToolStripMenuItem.Font = New System.Drawing.Font("Segoe UI Semibold", 9.0!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.DespreProgramToolStripMenuItem.ForeColor = System.Drawing.Color.Black
        Me.DespreProgramToolStripMenuItem.Name = "DespreProgramToolStripMenuItem"
        Me.DespreProgramToolStripMenuItem.Size = New System.Drawing.Size(135, 24)
        Me.DespreProgramToolStripMenuItem.Text = "Despre program"
        '
        'IesireToolStripMenuItem
        '
        Me.IesireToolStripMenuItem.BackColor = System.Drawing.Color.White
        Me.IesireToolStripMenuItem.Font = New System.Drawing.Font("Segoe UI Semibold", 9.0!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.IesireToolStripMenuItem.ForeColor = System.Drawing.Color.Black
        Me.IesireToolStripMenuItem.Name = "IesireToolStripMenuItem"
        Me.IesireToolStripMenuItem.Size = New System.Drawing.Size(59, 24)
        Me.IesireToolStripMenuItem.Text = "Ieșire"
        '
        'Main
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(8.0!, 16.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.BackColor = System.Drawing.Color.White
        Me.BackgroundImage = Global.Proiect_UNI_DS6.My.Resources.Resources.background
        Me.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch
        Me.ClientSize = New System.Drawing.Size(987, 574)
        Me.Controls.Add(Me.PictureBox1)
        Me.Controls.Add(Me.Port_s)
        Me.Controls.Add(Me.Label2)
        Me.Controls.Add(Me.Label1)
        Me.Controls.Add(Me.MenuStrip1)
        Me.DoubleBuffered = True
        Me.MainMenuStrip = Me.MenuStrip1
        Me.Margin = New System.Windows.Forms.Padding(4, 4, 4, 4)
        Me.Name = "Main"
        Me.SizeGripStyle = System.Windows.Forms.SizeGripStyle.Hide
        Me.Text = "Proiect la disciplina sisteme numerice programabile II - Sisteme de afisare cu mi" &
    "crocontroller-e"
        CType(Me.PictureBox1, System.ComponentModel.ISupportInitialize).EndInit()
        Me.MenuStrip1.ResumeLayout(False)
        Me.MenuStrip1.PerformLayout()
        Me.ResumeLayout(False)
        Me.PerformLayout()

    End Sub

    Friend WithEvents Label1 As Label
    Friend WithEvents Label2 As Label
    Friend WithEvents PictureBox1 As PictureBox
    Friend WithEvents Port_s As ComboBox
    Friend WithEvents SerialPort1 As IO.Ports.SerialPort
    Friend WithEvents MenuStrip1 As MenuStrip
    Friend WithEvents AplicatiiAfisareToolStripMenuItem As ToolStripMenuItem
    Friend WithEvents MatriceLEDAsamblareToolStripMenuItem As ToolStripMenuItem
    Friend WithEvents MatriceLEDMikroCToolStripMenuItem As ToolStripMenuItem
    Friend WithEvents SegmenteMikroCToolStripMenuItem As ToolStripMenuItem
    Friend WithEvents LCDTextMikroCToolStripMenuItem As ToolStripMenuItem
    Friend WithEvents LCDGraficMikroCToolStripMenuItem As ToolStripMenuItem
    Friend WithEvents DespreProgramToolStripMenuItem As ToolStripMenuItem
    Friend WithEvents IesireToolStripMenuItem As ToolStripMenuItem
End Class
