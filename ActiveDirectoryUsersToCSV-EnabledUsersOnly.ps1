Import-module ActiveDirectory
get-aduser -filter * -Properties displayName,givenName,sn,distinguishedname,mail,mailnickname,title |
Where { $_.Enabled -eq $True} |
select displayName,Enabled,givenName,sn,distinguishedname,mail,mailnickname,title |
export-csv ($env:USERPROFILE + "\Documents\ActiveDirectoryEnabledUsers.csv") -NoTypeInformation