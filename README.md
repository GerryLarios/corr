# Corr

Welcome to your new gem! In this directory, you'll find the files you need to be able to package up your Ruby library into a gem. Put your Ruby code in the file `lib/corr`. To experiment with that code, run `bin/console` for an interactive prompt.

TODO: Delete this and the text above, and describe your gem

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'corr'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install corr

## Usage

### Correlation

```ruby
x = [43, 21, 25, 42, 57, 59] # Age
y = [99, 65, 79, 75, 87, 81] # Glucose level

Corr.correlation(x, y) # 0.5298089018901745
```

### Sum

```ruby
x = [43, 21, 25, 42, 57, 59]

Corr.sum(x) # 247
```

### Mean

```ruby
x = [1, 3, 2, 5, 8, 7, 12, 2, 4]

Corr.mean(x) # 4.888888888888889
```

### Standard deviation

```ruby
x = [9, 2, 5, 4, 12, 7, 8, 11, 9, 3, 7, 4, 12, 5, 4, 10, 9, 6, 9, 4]

Corr.standard_deviation(x) # 2.9832867780352594
```

### Covariance

```ruby
x = [2.1, 2.5, 3.6, 4.0]
y = [8, 10, 12, 14]

Corr.covariance(x, y) # 1.7
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/corr. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/[USERNAME]/corr/blob/master/CODE_OF_CONDUCT.md).


## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Corr project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/corr/blob/master/CODE_OF_CONDUCT.md).
