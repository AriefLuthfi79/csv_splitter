lib = File.expand_path("lib", __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "csv_splitter/version"

Gem::Specification.new do |spec|
  spec.name          = "csv_splitter"
  spec.version       = CsvSplitter::VERSION
  spec.authors       = ["ariefluthfi79"]
  spec.email         = ["ariefluthfi799@gmail.com"]
  spec.license       = "MIT"
  spec.summary       = "This gem only purpose for interview"
  spec.metadata["source_code_uri"] = "https://github.com/ariefluthfi79/interview-koperansel-backend"

  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "activesupport"
  spec.add_development_dependency "sinatra"
  spec.add_development_dependency "zipruby"
end
