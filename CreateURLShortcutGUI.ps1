Add-Type -AssemblyName System.Windows.Forms
[System.Windows.Forms.Application]::EnableVisualStyles()

#Masterfully Crafted by Cameron Lewis

$Form                            = New-Object system.Windows.Forms.Form
$Form.ClientSize                 = '500,200'
$Form.text                       = "URL Shortcut Creation Tool"
$Form.TopMost                    = $false

$Button1                         = New-Object system.Windows.Forms.Button
$Button1.text                    = "Create Shortcut"
$Button1.width                   = 140
$Button1.height                  = 40
$Button1.location                = New-Object System.Drawing.Point(25,80)
$Button1.Font                    = 'Microsoft Sans Serif,10'

$Label1                          = New-Object system.Windows.Forms.Label
$Label1.text                     = "This creates a shortcut to a URL on your desktop."
$Label1.AutoSize                 = $true
$Label1.width                    = 25
$Label1.height                   = 10
$Label1.location                 = New-Object System.Drawing.Point(140,15)
$Label1.Font                     = 'Microsoft Sans Serif,10'

$TextBox1                        = New-Object system.Windows.Forms.TextBox
$TextBox1.multiline              = $false
$TextBox1.width                  = 300
$TextBox1.height                 = 25
$TextBox1.location               = New-Object System.Drawing.Point(180,60)
$TextBox1.Font                   = 'Microsoft Sans Serif,10'
$TextBox1.text					 = "Type URL Here"

$TextBox2                        = New-Object system.Windows.Forms.TextBox
$TextBox2.multiline              = $false
$TextBox2.width                  = 300
$TextBox2.height                 = 25
$TextBox2.location               = New-Object System.Drawing.Point(180,130)
$TextBox2.Font                   = 'Microsoft Sans Serif,10'
$TextBox2.text					 = "Type Shortcut's Name Here"

$Form.controls.AddRange(@($Button1,$TextBox1,$Label1,$TextBox2))


Function CreateURLShortcut{
$Shell = New-Object -ComObject ("WScript.Shell")
$ShortCut = $Shell.CreateShortcut($env:USERPROFILE + "\Desktop\" + $TextBox2.text + ".url")
$ShortCut.TargetPath = $TextBox1.text
#$ShortCut.WorkingDirectory = "C:\Program Files (x86)\Google\Chrome\Application"
#$ShortCut.WindowStyle = 1
#$ShortCut.IconLocation = "chrome.exe, 0"
$ShortCut.Save()
}

$Button1.add_click({CreateURLShortcut})


[void]$Form.ShowDialog()
