Gem::Specification.new do |s|
  s.name          = 'crest'
  s.version       = '0.1.0'
  s.date          = '2013-03-27'
  s.description   = "crest client for crest"
  s.summary       = "simple client to connect to crest server"
  s.authors       = ["Matthew Peck", "Kevin Smith"]
  s.email         = 'matthew@opscode.com'
  s.require_paths = ['lib']
  s.files         = Dir['lib/**/*.rb']
  s.homepage      = 'http://opscode.com'

  s.add_dependency('rest-client', '1.6.7')
end

