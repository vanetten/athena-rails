# athena-rails

## Installation

Add this line to the application's Gemfile:

```ruby
gem 'athena-rails'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install athena-rails

## Usage

Add athena to the application's Gemfile:

```ruby
gem 'athena-rails'
```

## Contributing

1. Fork it ( https://github.com/[my-github-username]/atheana-rails/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

## Build Notes

This is [athena jdbc adapter](http://docs.aws.amazon.com/athena/latest/ug/connect-with-jdbc.html) GEMified for the Rails asset pipeline through the following:

		bundle gem athena-rails
		cd athena-rails
		mkdir -p vendor/assets/javascripts
		curl https://s3.amazonaws.com/athena-downloads/drivers/AthenaJDBC41-1.0.0.jar -o lib/athena.jar
		git add .
		git commit -am "athena-rails"
		git remote add origin git@github.com:vanetten/athena-rails.git

* modify **lib/athena/rails/version.rb** to match AthenaJDBC41-1.0.0.jar version

		VERSION = "1.0.0.*"

* modify **lib/athena/rails.rb** to subclass Rails::Engine

		class Engine < ::Rails::Engine
		end

* modify **athena-rails.gemspec**

	  spec.summary       = "AthenaJDBC41-1.0.0.jar for JRuby Rails."
	  spec.description   = "This gem provides AthenaJDBC41-1.0.0.jar for your JRuby Rails application."
	  spec.homepage      = "https://github.com/vanetten/athena-rails"
  	spec.metadata['allowed_push_host'] = "https://rubygems.org"
	  spec.files         = `git ls-files -z`.split("\x0") + ["LICENSE", "README.md"]
		spec.add_dependency "railties", "~> 4.1"

* build

		rake build

* release

		rake release
