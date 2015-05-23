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
  $ensure  = $::karaf::params::ensure,
  $version = $::karaf::params::version,
  $target  = $::karaf::params::target,
) inherits karaf::params {
  
  class {'karaf::install': 
    ensure  => $ensure,
    version => $version,
    target  => $target,
  }
}
