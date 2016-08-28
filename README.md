sandoz demo

The sandoz gem runs off the mystical powers of the great Opal (https://github.com/opal/opal) a Ruby to JS compiler. This requires a little bit of configuration. You can use this repo as a template for your sandoz projects.

Make sure you have bundler installed

    gem install bundler

Then install dependencies:

    bundle install

Additionally place a copy of P5 (https://p5js.org/download/) in the app directory. If you run `tree` in your project directory you should see something like this:

    .
    Gemfile
    app/
        application.rb
        p5.js
    config.ru

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
