node default {
  $dest_path = "/opt/techne/lyceum/tomcat/conf/Catalina/localhost"

  file { $dest_path:
    ensure => directory,
    owner  => 'root',
    group  => 'root',
    mode   => '0755',
  }

  $files = ['consulta-documentos.xml', 'dashboard.xml', 'diploma-digital.xml', 'lyceum-api-rest.xml', 'webservices.xml']

  file { $files.map |$f| {
    "${dest_path}/${f}":
      ensure => file,
      source => "puppet:///modules/confapps/${f}",
      owner  => 'root',
      group  => 'root',
      mode   => '0644';
  }}
}
