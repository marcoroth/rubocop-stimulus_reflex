# RuboCop::StimulusReflex

StimulusReflex-specific analysis for your projects, as an extension to [RuboCop](https://github.com/rubocop/rubocop).

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'rubocop-stimulus_reflex'
```

And then execute:

```bash
bundle install
```

Or install it yourself as:

```bash
gem install rubocop-stimulus_reflex
```

## Usage

You need to tell RuboCop to load the StimulusReflex extension. There are threeways to do this:

### RuboCop configuration file

Put this into your `.rubocop.yml`.

```yaml
require: rubocop-stimulus_reflex
```

Alternatively, use the following array notation when specifying multiple extensions.

```yaml
require:
  - rubocop-other-extension
  - rubocop-stimulus_reflex
```

Now you can run `rubocop` and it will automatically load the RuboCop StimulusReflex cops together with the standard cops.

### Command line

```bash
rubocop --require rubocop-stimulus_reflex
```

### Rake task

```ruby
RuboCop::RakeTask.new do |task|
  task.requires << 'rubocop-stimulus_reflex'
end
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/marcoroth/rubocop-stimulus_reflex. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/marcoroth/rubocop-stimulus_reflex/blob/master/CODE_OF_CONDUCT.md).

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the RuboCop::StimulusReflex project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/marcoroth/rubocop-stimulus_reflex/blob/master/CODE_OF_CONDUCT.md).
