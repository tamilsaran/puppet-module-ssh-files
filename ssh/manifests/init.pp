class ssh(
String $package_name = $::ssh::params::package_name,
String $service_name = $::ssh::params::service_name,
) inherits ::ssh::params {
class { '::ssh::service': }
class { '::ssh::install': }

Class['::ssh::install'] -> Class['::ssh::service'] 
}
