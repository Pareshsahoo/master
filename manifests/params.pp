class apache::params {
  case $::osfamily {
    'Debian': {
      $package_name = 'httpd'
      $service_name = 'httpd'
    }
    'RedHat', 'Amzon': {
      $package_name = 'http'
      $service_name = 'http'
    }
    default: {
      fail("$::operatingsystem} not supported")
    }
  }
  $webpage_text = 'Puppet was here HSBC'
}
