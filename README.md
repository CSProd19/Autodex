# Autodex

Welcome! The Ruby gem I created parses the Yelp API to gather some information about the local auto shops in Corpus Christi, Tx. It takes user input to bring back 1-25 different auto shops. According to the user input, it will then bring back the details of that specific auto shop. 

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'autodex'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install autodex

## Usage

To start the program, you need to run 'bin/autodex' in your terminal. There will be a numbered list on local auto shops. It will prompt you to enter a number. According to which auto shop number you choose, the details for the chosen auto shop, will return. It will also prompt you to enter another number according to that same list of auto shops, if you'd like. According to the users input it will return the details of the chosen auto shop as well as a 'yes' or 'no' question to restart from the beginning or 'end' the program. The user can input 'end' at anytime to exit the program.


## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/autodex. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/[USERNAME]/autodex/blob/master/CODE_OF_CONDUCT.md).


## Code of Conduct

Everyone interacting in the Autodex project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/autodex/blob/master/CODE_OF_CONDUCT.md).
