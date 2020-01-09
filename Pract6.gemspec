
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "Pract6/version"

Gem::Specification.new do |spec|
  spec.name          = "alu0101133201"
  spec.version       = Pract6::VERSION
  spec.authors       = ["Sergio Guerra"]
  spec.email         = ["alu0101133201@ull.edu.es"]

  spec.summary       = %q{Práctica 06 LPP}
  spec.description   = %q{Desarrollo de la práctica "Desarrollo dirigido por pruebas", usando el lenguaje Ruby}
  spec.homepage      = "https://github.com/ULL-ESIT-LPP-1920/tdd-alu0101133201.git"


  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.17"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "guard"
  spec.add_development_dependency "guard-rspec"
  spec.add_development_dependency "guard-bundler"
  spec.add_development_dependency "coveralls"
end
