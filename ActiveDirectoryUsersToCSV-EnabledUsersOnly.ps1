Import-module ActiveDirectory
get-aduser -filter * -Properties displayName,givenName,sn,distinguishedname,mail,mailnickname,title,physicalDeliveryOfficeName |
Where { $_.Enabled -eq $True} |
select displayName,Enabled,givenName,sn,distinguishedname,mail,mailnickname,title,physicalDeliveryOfficeName |
export-csv ($env:USERPROFILE + "\Documents\ActiveDirectoryEnabledUsers.csv") -NoTypeInformation
