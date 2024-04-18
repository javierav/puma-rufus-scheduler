# puma-rufus-scheduler

![Testing](https://github.com/javierav/puma-rufus-scheduler/workflows/testing/badge.svg)

[Puma](https://github.com/puma/puma) plugin to run [Rufus Scheduler](https://github.com/jmettraux/rufus-scheduler).


## Installation

1. Add this line to your application's Gemfile:

```ruby
gem "puma-rufus-scheduler"
```

2. Install dependencies with bundler:

```shell
bundle install
```

3. Add the following line to your `config/puma.rb`:

```ruby
plugin "rufus-scheduler"
```

4. Create your scheduler file in `config/scheduler.rb`:

```ruby
scheduler = Rufus::Scheduler.new

scheduler.every "5s" do
  puts "Every 5 seconds #{Time.current}"
end

# This will attach scheduler thread to Puma's background thread.
# Dont forget to add this line!
scheduler.join
```

5. Start your Puma server and you should see the scheduler running:

```
$ bin/rails server

=> Booting Puma
=> Rails 7.1.3.2 application starting in development
...

Every 5 seconds 2024-04-17 14:13:11 UTC
Every 5 seconds 2024-04-17 14:13:16 UTC
Every 5 seconds 2024-04-17 14:13:21 UTC
```


## Configuration

You can change the scheduler file path by setting the `RUFUS_SCHEDULER_FILE` environment variable:

```shell
RUFUS_SCHEDULER_FILE=config/my_scheduler.rb bin/rails server
```


## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `bin/rake test` to run the tests.

To install this gem onto your local machine, run `bin/rake install`.

To release a new version, update the version number in `version.rb`, and then run `bin/rake release`,
which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to
[rubygems.org](https://rubygems.org).


## License

Copyright © 2024 Javier Aranda. Released under the terms of the [MIT license](LICENSE).
