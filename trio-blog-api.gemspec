lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "trio/blog/api/version"

Gem::Specification.new do |spec|
  spec.name          = "trio-blog-api"
  spec.version       = Trio::Blog::API::VERSION
  spec.authors       = ["Dhyego Calota"]
  spec.email         = ["dhyego@usetrio.com"]

  spec.summary       = %q{This gem is an API to make it easier to fetch the last Trio blog post.}
  spec.homepage      = "https://github.com/usetrio/trio-blog-api"
  spec.license       = "MIT"

  if spec.respond_to?(:metadata)
    spec.metadata["homepage_uri"] = spec.homepage
    spec.metadata["source_code_uri"] = spec.homepage
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files         = Dir.chdir(File.expand_path("..", __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end

  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", "~> 13.0"
  spec.add_dependency "typhoeus", "~> 1.3"
  spec.add_dependency "nokogiri", "~> 1.10"
end
