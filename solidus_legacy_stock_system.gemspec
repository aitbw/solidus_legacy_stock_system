# encoding: UTF-8
$:.push File.expand_path('../lib', __FILE__)
require 'solidus_legacy_stock_system/version'

Gem::Specification.new do |s|
  s.name        = 'solidus_legacy_stock_system'
  s.version     = SolidusLegacyStockSystem::VERSION
  s.summary     = 'Legacy stock system for Solidus'
  s.description = s.summary
  s.license     = 'BSD-3-Clause'

  s.author    = 'Stembolt'
  s.email     = 'contact@solidus.io'
  s.homepage  = 'https://solidus.io'

  s.files = Dir["{app,config,db,lib}/**/*", 'LICENSE', 'Rakefile', 'README.md']
  s.test_files = Dir['test/**/*']

  s.add_dependency 'solidus_core', ['>= 2.4.x', '< 3.x']

  s.add_development_dependency 'database_cleaner'
  s.add_development_dependency 'factory_bot'
  s.add_development_dependency 'ffaker'
  s.add_development_dependency 'pry'
  s.add_development_dependency 'rspec-activemodel-mocks'
  s.add_development_dependency 'rspec-rails'
  s.add_development_dependency 'rubocop'
  s.add_development_dependency 'rubocop-rspec', '1.4.0'
  s.add_development_dependency 'simplecov'
  s.add_development_dependency 'sqlite3'
  s.add_development_dependency 'pg'
  s.add_development_dependency 'mysql2'
end
