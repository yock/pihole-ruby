require 'lib/pi_hole'

Gem::Specification.new do |s|
  s.name = 'pihole'
  s.version = PiHole::VERSION
  s.licenses = ['Unlicense']
  s.summary = 'A Ruby SDK and command-line tool for interacting with the Pi-Hole HTTP API'
  s.authors = ['Mike Yockey']
  s.files = Dir['lib/*.rb'] + Dir['bin/*']
end
