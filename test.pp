file { '/tmp/puppet_test.txt':
  ensure  => 'file',
  content => "SUCESSO-PUPPET\n",
  mode    => '0644',
  owner   => 'root',
  group   => 'root',
}


