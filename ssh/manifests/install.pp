class ssh::install {
package {'ssh':
name => 'openssh-server',
ensure => present,
}
}

