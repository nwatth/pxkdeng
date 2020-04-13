# Pxkdeng

การพนันชนิดหนึ่ง เจ้ามือแจกไพ่ให้คนละ 2 ใบ แล้วเรียกไพ่ได้อีก และจะจ่ายเงินให้คนที่ได้แต้มสูงกว่า และกินเงินคนที่ได้แต้มต่ำกว่าตามกติกา

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'pxkdeng'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install pxkdeng

## Usage

```ruby
owner = Pxkdeng::Player.new("Watt")
member_1 = Pxkdeng::Player.new("Au")
member_2 = Pxkdeng::Player.new("Gamm")
member_3 = Pxkdeng::Player.new("Rom")

game = Pxkdeng::Game.new(owner)
game.add_member(member_1)
game.add_member(member_2)
game.add_member(member_3)
game.start

game.current_player.pxk? # true
game.current_player.call_card
game.current_player.skip_card

game.current_player.jubb3
game.current_player.call_card

game.reset
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/nwatth/pxkdeng.


## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
