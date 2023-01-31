require File.expand_path('../lib/rb-kqueue/version', __FILE__)

Gem::Specification.new do |gem|
  gem.name = %q{rb-kqueue}
  gem.version = KQueue::VERSION.join(".")

  gem.authors = ["Mathieu Arnold", "Nathan Weizenbaum"]
  gem.email = %q{mat@mat.cc nex342@gmail.com}
  gem.description = %q{A Ruby wrapper for BSD's kqueue, using FFI}
  gem.extra_rdoc_files = %w(README.md)
  gem.licenses = ['MIT']

  gem.files = `git ls-files`.split(/\n/)
  gem.executables = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files = gem.files.grep(%r{^(test|spec|features)/})

  gem.homepage = %q{http://github.com/mat813/rb-kqueue}
  gem.rdoc_options = ["--charset=UTF-8"]
  gem.require_paths = ["lib"]
  gem.summary = %q{A Ruby wrapper for BSD's kqueue, using FFI}

  gem.add_runtime_dependency(%q<ffi>, [">= 0.5.0"])
  gem.add_development_dependency(%q<yard>, [">= 0.4.0"])
  gem.add_development_dependency(%q<rspec>, [">= 3.3.0"])
end
