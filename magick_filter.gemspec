
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "magick_filter/version"

Gem::Specification.new do |spec|
  spec.name          = "magick_filter"
  spec.version       = MagickFilter::VERSION
  spec.authors       = ["arvind02"]
  spec.email         = ["er.arvind02@gmail.com"]

  spec.summary       = %q{Photo Filters Gem}
  spec.description   = %q{If you want to apply some cool filters on a photo with single command, this gem is going to help you.}
  spec.homepage      = "https://github.com/arvind02/magick_filter"
  spec.license       = "MIT"
  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16.a"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
