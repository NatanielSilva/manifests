node default {
  file { '/opt/techne/lyceum/tomcat/conf/Catalina/localhost':
    ensure => directory,
    owner  => 'root',
    group  => 'root',
    mode   => '0755',
  }

  file { '/opt/techne/lyceum/tomcat/conf/Catalina/localhost/consulta-documentos.xml':
    ensure => file,
    source => 'puppet:///modules/confapps/consulta-documentos.xml',
    owner  => 'root',
    group  => 'root',
    mode   => '0644',
  }

  file { '/opt/techne/lyceum/tomcat/conf/Catalina/localhost/dashboard.xml':
    ensure => file,
    source => 'puppet:///modules/confapps/dashboard.xml',
    owner  => 'root',
    group  => 'root',
    mode   => '0644',
  }

  file { '/opt/techne/lyceum/tomcat/conf/Catalina/localhost/diploma-digital.xml':
    ensure => file,
    source => 'puppet:///modules/confapps/diploma-digital.xml',
    owner  => 'root',
    group  => 'root',
    mode   => '0644',
  }

  file { '/opt/techne/lyceum/tomcat/conf/Catalina/localhost/lyceum-api-rest.xml':
    ensure => file,
    source => 'puppet:///modules/confapps/lyceum-api-rest.xml',
    owner  => 'root',
    group  => 'root',
    mode   => '0644',
  }

  file { '/opt/techne/lyceum/tomcat/conf/Catalina/localhost/webservices.xml':
    ensure => file,
    source => 'puppet:///modules/confapps/webservices.xml',
    owner  => 'root',
    group  => 'root',
    mode   => '0644',
  }
}
