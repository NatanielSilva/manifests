file { '/tmp/puppet_test.txt':
  ensure  => 'file',
  content => "SUCESSO-PUPPET-2025\n",
  mode    => '0644',
  owner   => 'root',
  group   => 'root',
}


