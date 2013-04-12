Exec {
  path=>'/usr/bin:/bin',
  logoutput=>on_failure
}

class { 'nginx': }

nginx::vhost {'cap-deploy-website':
  template=>'nginx.conf.erb',
}