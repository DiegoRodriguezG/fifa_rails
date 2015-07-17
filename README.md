# FifaRails

Welcome to your new gem! In this directory, you'll find the files you need to be able to package up your Ruby library into a gem. Put your Ruby code in the file `lib/fifa_rails`. To experiment with that code, run `bin/console` for an interactive prompt.

TODO: Delete this and the text above, and describe your gem

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'fifa_rails'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install fifa_rails

## Usage

Find players by skills (pace, rating, dribbling, shooting, defending, heading, passing, height, or sales)

    FifaRails::Fifa.find_by_skill('dribbling')[0...3]

This return the top 3 players with dribbling skill:

    [
        {"resource_id"=>"1661102407", "base_id"=>"158023", "first_name"=>"Lionel", "last_name"=>"Messi", "common_name"=>nil, "height"=>"169", "dob"=>"1987-06-24", "foot"=>"Left", "club_id"=>"241","league_id"=>"53", "nation_id"=>"52", "attribute1"=>"97", "attribute2"=>"96", "attribute3"=>"92", "attribute4"=>"99", "attribute5"=>"52", "attribute6"=>"77", "rare"=>"5", "rating"=>"98", "type"=>"PlayerA", "edition"=>"3"},
        {"resource_id"=>"1677878216", "base_id"=>"156616", "first_name"=>"Franck", "last_name"=>"Ribéry", "common_name"=>nil, "height"=>"170", "dob"=>"1983-04-07", "foot"=>"Right", "club_id"=>"21", "league_id"=>"19", "nation_id"=>"18", "attribute1"=>"96", "attribute2"=>"89", "attribute3"=>"91", "attribute4"=>"98", "attribute5"=>"54", "attribute6"=>"62", "rare"=>"5", "rating"=>"96", "type"=>"PlayerM", "edition"=>"2"},
        {"resource_id"=>"1694519617", "base_id"=>"20801", "first_name"=>"C. Ronaldo", "last_name"=>"dos Santos Aveiro", "common_name"=>"Cristiano Ronaldo", "height"=>"185", "dob"=>"1985-02-05", "foot"=>"Right", "club_id"=>"243", "league_id"=>"53", "nation_id"=>"38", "attribute1"=>"98", "attribute2"=>"97", "attribute3"=>"87", "attribute4"=>"98", "attribute5"=>"54", "attribute6"=>"92", "rare"=>"5", "rating"=>"98", "type"=>"PlayerA", "edition"=>"3"}
    ]

Find players by Name

    FifaRails::Fifa.find_by_name('pirlo')

This return a little description of the player

    [
        {"id"=>7763, "r"=>84, "n"=>27, "f"=>"Andrea", "l"=>"Pirlo"}
    ]

## TODO

1. Search players by baseid
2. Calc last resourceid by baseid
3. Return player image! (easy if we already have the above)

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release` to create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

1. Fork it ( https://github.com/[my-github-username]/fifa_rails/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
