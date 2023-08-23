$User = Read-Host -Prompt 'Enter username: '
$Server = Read-Host -Prompt 'Enter server: '

Get-Content ~/.ssh/id_rsa.pub | ssh $User@$Server "cat >> ~/.ssh/authorized_keys"