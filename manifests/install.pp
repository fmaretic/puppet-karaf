class karaf::install(
  $ensure  = $::karaf::params::ensure,
  $version = $::karaf::params::version,
  $target  = $::karaf::params::target,
) inherits karaf::params {
  
  archive { "apache-karaf-${version}":
   ensure     => $ensure,
   url        => "http://ftp.carnet.hr/misc/apache/karaf/${version}/apache-karaf-${version}.zip",
   target     => $target,
   extension  => 'zip',
   checksum   => false,
   src_target => '/tmp',
  }
}
