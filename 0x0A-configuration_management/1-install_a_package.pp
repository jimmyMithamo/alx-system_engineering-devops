# Install a package using Puppet

exec { 'install_flask':
  command => '/usr/bin/apt-get install flask==2.1.0',
  unless  => '/usr/bin/pip3 show flask | grep -q "Version: 2.1.0"',
  require => Package['python3-pip'],

}