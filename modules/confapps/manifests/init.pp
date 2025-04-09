class confapps {
  $arquivos = [
    'consulta-documentos.xml',
    'dashboard.xml',
    'diploma-digital.xml',
    'lyceum-api-rest.xml',
    'webservices.xml',
  ]

  $destino = '/opt/techne/lyceum/tomcat/conf/Catalina/localhost'

  file { $arquivos:
    ensure  => file,
    path    => "${destino}/${name}",
    source  => "puppet:///modules/confapps/${name}",
    owner   => 'root',
    group   => 'root',
    mode    => '0644',
  }
}

