require_relative './lib/pi_hole'
require 'rake'

sdk_files = Rake::FileList['lib/**/*.rb']

Gem::Specification.new do |s|
  s.name = 'pihole'
  s.version = PiHole::VERSION
  s.license = 'Unlicense'
  s.summary = 'A Ruby SDK and command-line tool for interacting with the Pi-Hole HTTP API'
  s.authors = ['Mike Yockey']
  s.files = sdk_files << 'bin/pihole'
  s.bindir = 'bin'
  s.executables = 'pihole'

  s.add_runtime_dependency 'thor'
end
