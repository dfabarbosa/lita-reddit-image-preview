Gem::Specification.new do |spec|
  spec.name          = "lita-reddit-image-preview"
  spec.version       = "1.0.3"
  spec.authors       = ["Daniel"]
  spec.email         = ["dfabarbosa@gmail.com"]
  spec.description   = %q{A Lita handler to show the media image from one reddit post.}
  spec.summary       = %q{A Lita handler to show the media image from one reddit post.}
  spec.homepage      = "https://github.com/dfabarbosa/lita-reddit-image-preview"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "lita", ">= 2.0"

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec", ">= 3.0.0.beta2"
  spec.add_development_dependency "simplecov"
  spec.add_development_dependency "coveralls"
  spec.add_development_dependency "nokogiri"

  spec.metadata = { "lita_plugin_type" => "handler" }
end
