Gem::Specification.new do |spec|
  spec.name        = 'puppet-lint-variable_contains_upcase'
  spec.version     = '1.4.0'
  spec.homepage    = 'https://github.com/fiddyspence/puppetlint-variablecase'
  spec.license     = 'MIT'
  spec.author      = ['Chris Spence', 'Vox Pupuli']
  spec.email       = 'voxpupuli@groups.io'
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

  spec.required_ruby_version = '>= 2.7.0'

  spec.add_dependency             'puppet-lint', '>= 1.0', '< 5'
  spec.add_development_dependency 'rspec', '~> 3.0'
  spec.add_development_dependency 'rspec-its', '~> 1.0'
  spec.add_development_dependency 'rspec-collection_matchers', '~> 1.0'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'rspec-json_expectations'
end
