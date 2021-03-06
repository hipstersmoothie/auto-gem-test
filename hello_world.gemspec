
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "hello_world/version"

Gem::Specification.new do |spec|
  spec.name          = "hipstersmoothie-auto-test"
  spec.version       = HelloWorld::VERSION
  spec.authors       = ["Andrew Lisowski"]
  spec.email         = ["lisowski54@gmail.com"]

  spec.license       = "MIT"
  spec.summary       = "A gem to test publishing with auto"
  spec.description   = "A gem to test publishing with auto. Auto automates you publishing through GitHub labels."
  spec.homepage      = "https://github.com/hipstersmoothie/auto-gem-test"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["homepage_uri"] = spec.homepage
    spec.metadata["source_code_uri"] = "https://github.com/hipstersmoothie/auto-gem-test"
    spec.metadata["changelog_uri"] = "https://github.com/hipstersmoothie/auto-gem-test/releases"
  end

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
end
