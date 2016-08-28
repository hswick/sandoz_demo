A Gem Named Sandoz

Make sure you have bundler installed

    gem install bundler

Then install dependencies:

    bundle install

Additionally place a copy of P5 (https://p5js.org/download/) in the app directory. If you run `tree` in your project directory you should see something like this:

.
├── Gemfile
├── README.md
├── app
│   ├── application.rb
│   └── p5.js
├── config.ru

Run:

    bundle exec rackup

How to Require:

    require 'opal'
    require 'sandoz'

    #Have to do this to get functions in global namespace
    include Sandoz
    #Option 2:
    Sandoz::defsketch do
      Sandoz::setup do
        Sandoz::size 600, 600
        Sandoz::rect 100, 100, 100, 100
      end
    end
