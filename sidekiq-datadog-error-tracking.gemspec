# frozen_string_literal: true

require_relative 'lib/sidekiq/datadog/error/tracking/version'

Gem::Specification.new do |spec|
  spec.name = 'sidekiq-datadog-error-tracking'
  spec.version = Sidekiq::Datadog::Error::Tracking::VERSION
  spec.authors = ['Matthieu CIAPPARA']
  spec.email = ['matthieu.ciappara@outlook.fr']

  spec.summary = 'Reports exceptions from your Sidekiq jobs in Datadog Error Tracking'
  spec.description = 'Format your Sidekiq logs to be easily parsed in Datadog and integrate with Datadog Error Tracking'
  spec.homepage = 'https://github.com/Ezveus/sidekiq-datadog-error-tracking'
  spec.license = 'MIT'
  spec.required_ruby_version = '>= 2.6.0'

  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = spec.homepage
  spec.metadata['changelog_uri'] = 'https://github.com/Ezveus/sidekiq-datadog-error-tracking/blob/master/CHANGELOG.md'

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (File.expand_path(f) == __FILE__) || f.start_with?(*%w[bin/ test/ spec/ features/ .git .circleci appveyor])
    end
  end
  spec.bindir = 'exe'
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_dependency 'sidekiq', '>= 6.0'

  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
  spec.metadata['rubygems_mfa_required'] = 'true'
end
