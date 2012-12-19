$:.unshift File.expand_path('lib', File.dirname(__FILE__))
require 'casty/version'

Gem::Specification.new do |gem|
  gem.name = 'casty'
  gem.version = C::VERSION
  gem.authors = ["George Ogata", "Vasily Fedoseyev"]
  gem.email = ["george.ogata@gmail.com", "vasilyfedoseyev@gmail.com"]
  gem.license = 'MIT'
  gem.date = Time.now.strftime('%Y-%m-%d')
  gem.description = "Fork of CAST, C parser and AST constructor."
  gem.summary = "C parser and AST constructor."
  gem.homepage = 'http://github.com/Vasfed/cast'

  gem.extensions    = ["ext/casty/extconf.rb"]
  gem.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  gem.files         = `git ls-files`.split("\n") + ['ext/casty/yylex.c', 'lib/casty/c.tab.rb']
  gem.test_files    = `git ls-files -- test/*`.split("\n")

  gem.add_development_dependency 'rake-compiler'
  gem.add_development_dependency 'racc', '~> 1.4.8'
end
