$word = New-Object -ComObject Word.Application
$word.Visible = $false

$doc1 = $word.Documents.Open('D:\GitHub\SPM-Design-AGENCY\Legal\avisoLegal.doc')
$text1 = $doc1.Content.Text
[System.IO.File]::WriteAllText('D:\GitHub\SPM-Design-AGENCY\Legal\avisoLegal.txt', $text1, [System.Text.Encoding]::UTF8)
$doc1.Close($false)

$doc2 = $word.Documents.Open('D:\GitHub\SPM-Design-AGENCY\Legal\politicaCookies.doc')
$text2 = $doc2.Content.Text
[System.IO.File]::WriteAllText('D:\GitHub\SPM-Design-AGENCY\Legal\politicaCookies.txt', $text2, [System.Text.Encoding]::UTF8)
$doc2.Close($false)

$doc3 = $word.Documents.Open('D:\GitHub\SPM-Design-AGENCY\Legal\politicaPrivacidadDatos.doc')
$text3 = $doc3.Content.Text
[System.IO.File]::WriteAllText('D:\GitHub\SPM-Design-AGENCY\Legal\politicaPrivacidadDatos.txt', $text3, [System.Text.Encoding]::UTF8)
$doc3.Close($false)

$word.Quit()
Write-Host 'Done extracting legal docs'
