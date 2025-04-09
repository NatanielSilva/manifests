file { '/tmp/puppet_test.txt':
  ensure  => 'file',
  content => "JESUS-SALVA\n",
  mode    => '0644',
  owner   => 'root',
  group   => 'root',
}


