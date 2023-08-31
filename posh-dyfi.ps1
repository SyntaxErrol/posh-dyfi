$dyname = ""
$user = ""
$pass= ""

$url = "http://dy.fi/nic/update?hostname=$dyname.dy.fi"
$secpasswd = ConvertTo-SecureString $pass -AsPlainText -Force
$credential = New-Object System.Management.Automation.PSCredential($user, $secpasswd)
$result = Invoke-RestMethod $url -Credential $credential

echo $result
