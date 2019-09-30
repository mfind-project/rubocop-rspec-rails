# mfind-rubocop-rspec-rails

[![Gem Version][gem-version-img]][gem-version]
[![Build Status][build-status-img]][build-status]

RuboCop rules for mfind projects that use Ruby on Rails. Includes:

- [`mfind-rubocop-rspec`](mfind-rubocop-rspec)
- [`rubocop-rails`](rubocop-rails)

If you do not create Ruby on Rails project, **use gem [`mfind-rubocop-rspec`](mfind-rubocop-rspec) instead.**

## Installation

Add this line to your application's Gemfile:

```ruby
group :test, :development do
  gem 'mfind-rubocop-rspec-rails'
end
```

Do notice, that you do not need to include other `rubocop-*` gems in your
`Gemfile`, this single one will suffice.

For a Ruby library, add this to your gemspec:

```ruby
spec.add_development_dependency 'mfind-rubocop-rspec-rails'
```

And then run:

```bash
$ bundle install
```

## Usage

Create a `.rubocop.yml` with the following directives:

```yaml
inherit_gem:
  mfind-rubocop-rspec-rails:
    - default.yml
```

Now, run:

```bash
$ bundle exec rubocop
```

## Configuration

All configuration goes to [default.yml](config) file.

- [`mfind-rubocop-rspec` defaults](mfind-rubocop-rspec-defaults)
- [`rubocop-rails` defaults](rubocop-rails-defaults) & [Rails styleguide](rails-styleguide)
- [`rubocop` defaults](rubocop-defaults) & [Ruby styleguide](ruby-styleguide)
- [`rubocop-rspec` defaults](rubocop-rspec-defaults) & [RSpec styleguide](rspec-styleguide)
- [`rubocop-performance` defaults](rubocop-performance-defaults)

## Publish to RubyGems

In order to publish new version of the gem follow the steps:

1. `git hf release start X.Y.Z`
2. bump up version in [`MfindRuboCopRSpec::VERSION`](gem-version-path)
3. `git commit -am 'UPD version to X.Y.Z'`
4. `git hf release finish X.Y.Z`
5. `bundle update mfind-rubocop-rspec-rails` in projects that use it

The `gem push` script is set up on CircleCI upon `git hf release finish`, as per
[Publishing RubyGems using Circle CI 2.0 article](publishing-rubygems-using-circleci).

[rubocop-rails]: https://github.com/rubocop-hq/rubocop-rails
[mfind-rubocop-rspec]: https://github.com/mfind-project/mfind-rubocop-rspec
[publishing-rubygems-using-circleci]: https://medium.com/@pezholio/publishing-rubygems-using-circle-ci-2-0-1dbf06ae9942
[gem-version-path]: https://github.com/mfind-project/mfind-rubocop-rspec-rails/blob/develop/lib/mfind_rubocop_rspec_rails.rb#L4
[config]: https://github.com/mfind-project/mfind-rubocop-rspec-rails/blob/master/default.yml
[mfind-rubocop-rspec-defaults]: https://github.com/mfind-project/mfind-rubocop-rspec/blob/master/default.yml
[rubocop-rails-defaults]: https://github.com/rubocop-hq/rubocop-rails/blob/master/config/default.yml
[rails-styleguide]: https://rails.rubystyle.guide/
[rubocop-defaults]: https://github.com/rubocop-hq/rubocop/blob/master/config/default.yml
[ruby-styleguide]: https://rubystyle.guide/
[rubocop-rspec-defaults]: https://github.com/rubocop-hq/rubocop-rspec/blob/master/config/default.yml
[rspec-styleguide]: https://rspec.rubystyle.guide/
[rubocop-performance-defaults]: https://github.com/rubocop-hq/rubocop-performance/blob/master/config/default.yml
[gem-version]: https://rubygems.org/gems/mfind-rubocop-rspec-rails
[build-status]: https://circleci.com/gh/mfind-project/mfind-rubocop-rspec-rails/tree/master
[gem-version-img]: https://badge.fury.io/rb/mfind-rubocop-rspec-rails.svg
[build-status-img]: https://circleci.com/gh/mfind-project/mfind-rubocop-rspec-rails/tree/master.svg?style=shield
