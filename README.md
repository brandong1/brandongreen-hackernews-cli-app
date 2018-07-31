# HackerNews

Welcome to the unofficial Hacker News CLI gem!

This CLI app scrapes the Hacker News website: https://news.ycombinator.com/

Users have the option of viewing the latest news headlines or seeing the job postings listed on the Hacker News website.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'hacker_news'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install hacker_news

## Usage

To use this gem follow the installation instructions above. The original code is a base for parsing the data from any website that lists news headlines or job postings. Feel free to edit according to your needs.

To run the CLI, type in ./bin/hacker_news, which will give you instructions to type 'news' for the latest news headlines, 'jobs' for the latest job postings. 

When you are finished reviewing the lists, type 'exit' to exit the CLI.

## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/brandong1/hacker_news. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the HackerNews project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/hacker_news/blob/master/CODE_OF_CONDUCT.md).
