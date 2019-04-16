Import-module ActiveDirectory
get-aduser -filter * -Properties displayName,givenName,sn,distinguishedname,mail,mailnickname,title |
Where { $_.Enabled -eq $False} |
select displayName,Enabled,givenName,sn,distinguishedname,mail,mailnickname,title |
export-csv ($env:USERPROFILE + "\Documents\ActiveDirectoryDisabledUsers.csv") -NoTypeInformation