# Logwork

## Installation

    $ gem install logwork

## Usage

Don't forget to set `ENV['JIRA_USERNAME']` and `ENV['JIRA_PASSWORD']`

```
  logwork start AGDEV-12345 00:30 'Finished my Job!'
```
Parameters are Issue Number, Time Spent(use example's format) and Comments left on the issue.

## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/logwork`.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/logwork. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
