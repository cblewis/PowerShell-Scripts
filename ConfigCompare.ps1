Compare-Object -ReferenceObject $(Get-Content C:\Users\CameronLewis\Downloads\test.txt) -DifferenceObject $(Get-Content C:\Users\CameronLewis\Downloads\test2.txt) #| Out-File -FilePath C:\Users\CameronLewis\Downloads\results.txt