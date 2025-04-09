class lyceumxmls {
  $destino = '/opt/techne/lyceum/tomcat/conf/Catalina/localhost'

  file { $destino:
    ensure => directory,
    owner  => 'root',
    group  => 'root',
    mode   => '0755',
  }

  $arquivos = [
    'consulta-documentos.xml',
    'dashboard.xml',
    'diploma-digital.xml',
    'lyceum-api-rest.xml',
    'webservices.xml'
  ]

  $arquivos.each |String $arquivo| {
    file { "${destino}/${arquivo}":
      ensure => file,
      source => "puppet:///modules/lyceumxmls/${arquivo}",
      owner  => 'root',
      group  => 'root',
      mode   => '0644',
    }
  }
}

