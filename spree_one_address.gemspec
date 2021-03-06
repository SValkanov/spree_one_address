# encoding: UTF-8
Gem::Specification.new do |s|
  s.platform    = Gem::Platform::RUBY
  s.name        = 'spree_one_address'
  s.version     = '3.1.0'
  s.summary     = 'Only one address for spree'
  s.description = 'Removes billing address and leaves the user with only one address to fill.'
  s.required_ruby_version = '>= 2.1.0'

  s.author    = 'Stanislav Valkanov'
  s.email     = 'svalkanov97@gmail.com'
  # s.homepage  = 'http://www.spreecommerce.com'
  s.license = 'BSD-3'

  # s.files       = `git ls-files`.split("\n")
  # s.test_files  = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.require_path = 'lib'
  s.requirements << 'none'

  s.add_dependency 'spree_core', '~> 3.1.0'

end
