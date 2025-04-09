class confapps {
  $arquivos = [
    'consulta-documentos.xml',
    'dashboard.xml',
    'diploma-digital.xml',
    'lyceum-api-rest.xml',
    'webservices.xml',
  ]

  $destino = '/opt/techne/lyceum/tomcat/conf/Catalina/localhost'

  $arquivos.each |String $arquivo| {
    file { "${destino}/${arquivo}":
      ensure  => file,
      source  => "puppet:///modules/confapps/${arquivo}",
      owner   => 'root',
      group   => 'root',
      mode    => '0644',
    }
  }
}
