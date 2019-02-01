Import-module ActiveDirectory
get-aduser -filter * -Properties displayName,Enabled,givenName,sn,distinguishedname,mail,mailnickname,title |
select displayName,Enabled,givenName,sn,distinguishedname,mail,mailnickname,title |
export-csv ($env:USERPROFILE + "\Documents\ActiveDirectoryUsers.csv") -NoTypeInformation