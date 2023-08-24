# Sidekiq::Datadog::Error::Tracking

Reports exceptions from your Sidekiq jobs in Datadog Error Tracking

## Installation

Install the gem and add to the application's Gemfile by executing:

    $ bundle add sidekiq-datadog-error-tracking

If bundler is not being used to manage dependencies, install the gem by executing:

    $ gem install sidekiq-datadog-error-tracking

## Usage

Configure Sidekiq logger and error handler as such:

```ruby
Sidekiq.configure_server do |config|
  config.logger.formatter = Sidekiq::Logger::Formatters::Datadog.new
  config.error_handlers << Sidekiq::Datadog::Error::Tracking
end
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/sidekiq-datadog-error-tracking. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/[USERNAME]/sidekiq-datadog-error-tracking/blob/master/CODE_OF_CONDUCT.md).

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Sidekiq::Datadog::Error::Tracking project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/sidekiq-datadog-error-tracking/blob/master/CODE_OF_CONDUCT.md).
