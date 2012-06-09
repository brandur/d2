Gem::Specification.new do |gem|
  gem.name        = "d2"
  gem.version     = "0.1"

  gem.author      = "Brandur"
  gem.email       = "brandur@mutelight.org"
  gem.homepage    = "https://github.com/brandur/d2"
  gem.license     = "MIT"
  gem.summary     = "A cross-version compatible shortcut for invoking a Ruby debugger."
  gem.description = <<-eos
A cross-version compatible shortcut for invoking a Ruby debugger that will run properly under the currently executing environment.
  eos

  gem.files = %w{lib/d2.rb}

  if RUBY_VERSION < "1.9"
    gem.add_dependency "ruby-debug", "~> 0.10.4"
  else
    gem.add_dependency "debugger", "~> 1.1.4"
  end
end
