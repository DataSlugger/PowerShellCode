[void] [System.Reflection.Assembly]::LoadWithPartialName("System.Drawing")
[void] [System.Reflection.Assembly]::LoadWithPartialName("System.Windows.Forms")

try {
    $objForm = New-Object -TypeName System.Windows.Forms.Form
    $objForm.Size = New-Object -TypeName System.Drawing.Size(700,700)
    $objForm.Text = "Amphora Inc."

    $objBtnOk = New-Object -TypeName System.Windows.Forms.Button
    $objBtnOk.Size = New-Object -TypeName System.Drawing.Size(80,20)
    $objBtnOk.Location = New-Object -TypeName System.Drawing.Size(10,10)
    $objBtnOk.Text = "Accept"
    $objForm.Controls.Add($objBtnOk)

    $objGrpBoxMain = New-Object -TypeName System.Windows.Forms.GroupBox
    $objGrpBoxMain.Size = New-Object -TypeName System.Drawing.Size(300,300)
    $objGrpBoxMain.Location = New-Object -TypeName System.Drawing.Size(10,40)
    $objGrpBoxMain.Text = "Main Group Box"
    $objForm.Controls.Add($objGrpBoxMain)

    $objbtnTest = New-Object -TypeName System.Windows.Forms.Button
    $objbtnTest.Size = New-Object -TypeName System.Drawing.Size(80,20)
    $objbtnTest.Location = New-Object -TypeName System.Drawing.Size(10,10)
    $objbtnTest.Text = "Testing"
    $objGrpBoxMain.Controls.Add($objbtnTest)

    $objForm.ShowDialog() | Out-Null


}
catch [System.Exception] {
    
}