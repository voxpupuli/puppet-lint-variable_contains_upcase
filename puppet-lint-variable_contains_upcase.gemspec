Gem::Specification.new do |spec|
  spec.name        = 'puppet-lint-variable_contains_upcase'
  spec.version     = '1.0.2'
  spec.homepage    = 'https://github.com/fiddyspence/puppetlint-variablecase'
  spec.license     = 'MIT'
  spec.author      = 'Chris Spence'
  spec.email       = 'chris@spence.org.uk'
  spec.files       = Dir[
    'README.md',
    'LICENSE',
    'lib/**/*',
    'spec/**/*',
  ]
  spec.test_files  = Dir['spec/**/*']
  spec.summary     = 'puppet-lint variable_case check'
  spec.description = <<-EOF
    Extends puppet-lint to ensure that your variables are all lower case
  EOF

  spec.add_dependency             'puppet-lint', '>= 1.0', '< 3.0'
  spec.add_development_dependency 'rspec', '~> 3.0'
  spec.add_development_dependency 'rspec-its', '~> 1.0'
  spec.add_development_dependency 'rspec-collection_matchers', '~> 1.0'
  spec.add_development_dependency 'rake'
end
