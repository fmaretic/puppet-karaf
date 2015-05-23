class karaf::install(
  $ensure     = $::karaf::params::ensure,
  $target     = $::karaf::params::target,
  $src_target = $::karaf::params::src_target,
) inherits karaf::params {
  
  archive { 'apache-karaf-3.0.3':
   ensure     => $ensure,
   url        => 'http://ftp.carnet.hr/misc/apache/karaf/3.0.3/apache-karaf-3.0.3.zip',
   target     => $target,
   extension  => 'zip',
   checksum   => false,
   src_target => $src_target,
  }
}
