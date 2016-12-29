$FilnName = '/home/seth/Dev/Puppet/puppetlint-plugins/test-proj/test.txt'
$content = 'helloworld'
file { $FileName:
  ensure  => file,
  content => $content,
}
