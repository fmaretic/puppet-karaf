# Class: karaf
#
# This module manages Apache Karaf
#
# Parameters: none
#
# Actions: Installs Apache Karaf
#
# Requires: see metadata.json
#
# Sample Usage: include 'karaf'
#
class karaf(
  $ensure     = $::karaf::params::ensure,
  $target     = $::karaf::params::target,
  $src_target = $::karaf::params::src_target,
) inherits karaf::params {
  
  class {'karaf::install': 
    ensure     => $ensure,
    target     => $target,
    src_target => $src_target,
  }
}
