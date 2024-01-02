# frozen_string_literal: true

require_relative 'lib/maple_tech/technologies/version'

Gem::Specification.new do |spec|
  spec.name = 'technologies-list-maple'
  spec.version = MapleTech::Technologies::VERSION
  spec.authors = ['MapleHR']
  spec.email = ['engineering@maplehr.io']

  spec.summary = 'This gem will manage technologies'
  spec.homepage = 'https://github.com/DIncProd/technologies-list-maple'
  spec.license = 'MIT'
  # rubocop:disable Gemspec/RequiredRubyVersion
  spec.required_ruby_version = '>= 3.0'
  # rubocop:enable Gemspec/RequiredRubyVersion

  spec.metadata['allowed_push_host'] = "TODO: Set to your gem server 'https://example.com'"

  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = 'https://github.com/DIncProd/technologies-list-maple'
  spec.metadata['changelog_uri'] = 'https://github.com/DIncProd/technologies-list-maple/blob/master/CHANGELOG.md'

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(/\A(?:(?:bin|test|spec|features)\/|\.(?:git|travis|circleci)|appveyor)/)
    end
  end
  spec.bindir = 'exe'
  spec.executables = spec.files.grep(/\Aexe\//) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"

  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
  spec.metadata['rubygems_mfa_required'] = 'true'
end
