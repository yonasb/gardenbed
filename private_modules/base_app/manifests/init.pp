# This class installs the rbenv, appropriate rubies, and node.js
class base_app (
  $rubies          = [],
  $deployer        = 'deployer',
  $deployers_group = 'deployers',
){
  include nodejs

  rbenv::install { $deployer:
    group => $deployers_group,
  }

  rbenv::compile { $rubies:
    user => $deployer,
  }

  file { '/var/www':
    ensure  => directory,
    group   => $deployers_group,
    owner   => 'root',
    mode    => '0775',
    require => Group['deployers']
  }
}