# == Class: awstats::params
#
# This class should be considered private
#
class awstats::params {
  case $::osfamily {
    'RedHat': {
      $package_name     = 'awstats'
      $config_dir_path  = '/etc/awstats'
    }
    default: {
      fail("Module ${module_name} is not supported on ${::operatingsystem}")
    }
  }
}