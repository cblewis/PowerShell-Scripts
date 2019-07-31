$folder1 = Get-Content C:\Users\CameronLewis\Downloads\FILE1.txt | ForEach-Object { $_.Trim() }
$folder2 = Get-Content C:\Users\CameronLewis\Downloads\FILE2.txt | ForEach-Object { $_.Trim() }

Compare-Object $folder1 $folder2 #|Out-File -FilePath C:\Users\CameronLewis\Downloads\results.txt
