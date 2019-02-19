
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "hacker_news/version"

Gem::Specification.new do |spec|
  spec.name          = "hacker_news"
  spec.version       = HackerNews::VERSION
  spec.authors       = ["Brandon Green"]
  spec.email         = ["brandon@brandonleeproductions.com"]

  spec.summary       = %q{Hacker News CLI}
  spec.description   = %q{This CLI Gem scrapes the Hacker News website: https://news.ycombinator.com/}
  spec.homepage      = "https://github.com/brandong1/brandongreen-hackernews-cli-app"
  spec.license       = "MIT"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "colorize"
  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "nokogiri", '~> 1.8', '>= 1.8.4'
  spec.add_development_dependency "pry", "~> 0"


end
