class ssh::params {
if $facts['os']['family'] == 'Debian' {
$package_name = 'openssh-server'
$service_name = 'ssh'
}
elsif $facts['os']['family'] == 'RedHat' {
$package_name = 'openssh-server'
$service_name = 'sshd'
}
else {
fail("${facts['operatingsystem']} is not su[pport")
}
}

