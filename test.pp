file { '/tmp/puppet_test.txt':
  ensure  => 'file',
  content => "PORRAAAA\n",
  mode    => '0644',
  owner   => 'root',
  group   => 'root',
}


