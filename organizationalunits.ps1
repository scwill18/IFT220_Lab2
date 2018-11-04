# brutforce script to make some organizational units

# you need to change "DC=ad,DC=sparky-tech,DC=com" to match your domain and update the ST initials to match or remove them

Write-Host -ForegroundColor yellow "Creating OUs"
New-ADOrganizationalUnit -Name SCW_Computers -Path "DC=LA,DC=SCWILL18,DC=lan" -Description "SCW Computers"
 New-ADOrganizationalUnit -Name Workstations -Path "OU=SCW_Computers,DC=LA,DC=SCWILL18,DC=lan"
  New-ADOrganizationalUnit -Name President -Path "OU=Workstations,OU=SCW_Computers,DC=LA,DC=SCWILL18,DC=lan"
  New-ADOrganizationalUnit -Name Finance -Path "OU=Workstations,OU=SCW_Computers,DC=LA,DC=SCWILL18,DC=lan"
  New-ADOrganizationalUnit -Name HR -Path "OU=Workstations,OU=SCW_Computers,DC=LA,DC=SCWILL18,DC=lan"
  New-ADOrganizationalUnit -Name Sales -Path "OU=Workstations,OU=SCW_Computers,DC=LA,DC=SCWILL18,DC=lan"
  New-ADOrganizationalUnit -Name Legal -Path "OU=Workstations,OU=SCW_Computers,DC=LA,DC=SCWILL18,DC=lan"
  New-ADOrganizationalUnit -Name IT -Path "OU=Workstations,OU=SCW_Computers,DC=LA,DC=SCWILL18,DC=lan"
 New-ADOrganizationalUnit -Name Servers -Path "OU=SCW_Computers,DC=LA,DC=SCWILL18,DC=lan"
  New-ADOrganizationalUnit -Name Hyper-V -Path "OU=Servers,OU=SCW_Computers,DC=LA,DC=SCWILL18,DC=lan"
  New-ADOrganizationalUnit -Name Exchange -Path "OU=Servers,OU=SCW_Computers,DC=LA,DC=SCWILL18,DC=lan"
New-ADOrganizationalUnit -Name SCW_Groups -Path "DC=LA,DC=SCWILL18,DC=lan" -Description "High Level Security Groups"
New-ADOrganizationalUnit -Name SCW_Privileged_Accounts -Path "DC=LA,DC=SCWILL18,DC=lan" -Description "Privileged Accounts"
New-ADOrganizationalUnit -Name SCW_Users -Path "DC=LA,DC=SCWILL18,DC=lan" -Description "Non-Privileged Accounts"
Write-Host -ForegroundColor yellow "Done creating OUs"
Write-Host -ForegroundColor yellow ""

Write-Host -ForegroundColor yellow "Creating groups based on department"
New-ADGroup -GroupCategory Security -GroupScope Global -Name President -Path "OU=SCW_Groups,DC=LA,DC=SCWILL18,DC=lan"
New-ADGroup -GroupCategory Security -GroupScope Global -Name Finance -Path "OU=SCW_Groups,DC=LA,DC=SCWILL18,DC=lan"
New-ADGroup -GroupCategory Security -GroupScope Global -Name HR -Path "OU=SCW_Groups,DC=LA,DC=SCWILL18,DC=lan"
New-ADGroup -GroupCategory Security -GroupScope Global -Name Sales -Path "OU=SCW_Groups,DC=LA,DC=SCWILL18,DC=lan"
New-ADGroup -GroupCategory Security -GroupScope Global -Name Legal -Path "OU=SCW_Groups,DC=LA,DC=SCWILL18,DC=lan"
New-ADGroup -GroupCategory Security -GroupScope Global -Name IT -Path "OU=SCW_Groups,DC=LA,DC=SCWILL18,DC=lan"
# Create a Leadership group for the President and VPs to access restricted a file share
New-ADGroup -GroupCategory Security -GroupScope Global -Name Leadership -Path "OU=SCW_Groups,DC=LA,DC=SCWILL18,DC=lan"
Write-Host -ForegroundColor yellow "Done creating groups"
Write-Host -ForegroundColor yellow ""
