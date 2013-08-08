lib = File.expand_path('../lib/', __FILE__)
$:.unshift lib unless $:.include?(lib)

require 'maverick_vin_parser'

Gem::Specification.new do |s|
  s.name        = 'maverick_vin_parser'
  s.version     = MaverickVinParser::VERSION
  s.date        = Date.today
  s.summary     = 'VIN parser for Ford Mavericks'
  s.description = 'A parser for Vehicle Identification Numbers from Ford Mavericks and Mercury Comets 1970-77'
  s.authors     = ['Byron Appelt']
  s.email       = 'byron.appelt@gmail.com'
  s.files       = %w(lib/maverick_vin_parser.rb lib/vin_constants.rb)
  s.executables << 'maverick_vin_parser'
  s.homepage    = 'http://bappelt.github.io/maverick_vin/'
  s.license     = 'MIT'
end