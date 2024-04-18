require_relative "lib/puma-rufus-scheduler/version"

Gem::Specification.new do |spec|
  # Information
  spec.name     = "puma-rufus-scheduler"
  spec.version  = PumaRufusScheduler::VERSION
  spec.summary  = "Puma plugin to run Rufus Scheduler"
  spec.homepage = "https://github.com/javierav/puma-rufus-scheduler"
  spec.license  = "MIT"

  # Ownership
  spec.author = "Javier Aranda"
  spec.email  = "aranda@hey.com"

  # Metadata
  spec.metadata["homepage_uri"]          = spec.homepage
  spec.metadata["source_code_uri"]       = "https://github.com/javierav/puma-rufus-scheduler/tree/v#{spec.version}"
  spec.metadata["changelog_uri"]         = "https://github.com/javierav/puma-rufus-scheduler/releases"
  spec.metadata["rubygems_mfa_required"] = "true"

  # Gem
  spec.files = Dir["lib/**/*", "LICENSE", "README.md"]

  # Ruby
  spec.required_ruby_version = Gem::Requirement.new(">= 2.4")
end
