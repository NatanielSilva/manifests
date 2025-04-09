node default {
  # Garante que o diretório existe
  file { '/opt/techne/lyceum/tomcat/conf/Catalina/localhost':
    ensure => directory,
    owner  => 'tomcat',
    group  => 'tomcat',
    mode   => '0755',
  }

  # Copia cada XML para o Tomcat
  file { '/opt/techne/lyceum/tomcat/conf/Catalina/localhost/consulta-documentos.xml':
    ensure => file,
    source => 'puppet:///modules/lyceum_xmls/consulta-documentos.xml',  # Caminho no Puppet Master
    owner  => 'tomcat',
    group  => 'tomcat',
    mode   => '0644',
  }

