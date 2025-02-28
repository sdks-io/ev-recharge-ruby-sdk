Gem::Specification.new do |s|
  s.name = 'ev-recharge-sdk'
  s.version = '1.4.0'
  s.summary = 'SDK for using Shell EV Charging APIs'
  s.description = 'This API Product provides the option to manage charging at all public Shell Recharge locations. The end points provides control to start, stop and get status of the charging session.'
  s.authors = ['developer sdksio']
  s.email = ['developer+sdksio@apimatic.io']
  s.homepage = 'https://www.shell.com/'
  s.licenses = ['MIT']
  s.metadata  = {
}

  s.add_dependency('apimatic_core_interfaces', '~> 0.2.1')
  s.add_dependency('apimatic_core', '~> 0.3.11')
  s.add_dependency('apimatic_faraday_client_adapter', '~> 0.1.4')
  s.add_development_dependency('minitest', '~> 5.24.0')
  s.add_development_dependency('minitest-proveit', '~> 1.0')
  s.required_ruby_version = ['>= 2.6']
  s.files = Dir['{bin,lib,man,test,spec}/**/*', 'README*', 'LICENSE*']
  s.require_paths = ['lib']
end
