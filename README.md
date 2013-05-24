# LoggerProxy

[![Build Status](https://travis-ci.org/gabynaiman/logger_proxy.png?branch=master)](https://travis-ci.org/gabynaiman/logger_proxy)
[![Code Climate](https://codeclimate.com/github/gabynaiman/logger_proxy.png)](https://codeclimate.com/github/gabynaiman/logger_proxy)

Logger proxy

## Installation

Add this line to your application's Gemfile:

    gem 'logger_proxy'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install logger_proxy

## Usage

    MyGem.setup do |config|
      config.logger = LoggerProxy.new 'MyGem', Rails.logger
    end

    logger.info 'Processing ...' # => 'TIME INFO - [MyGem] Processing ...'

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
