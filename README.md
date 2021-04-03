# PiHole Ruby

Interface with the Pi-Hole HTTP admin API via a Ruby SDK and command-line executable.

## Usage

### Command Line

After installing the gem run the `pihole` command from your terminal. Usage instructions are available via `pihole help`

### Ruby SDK

The library also provides a Ruby SDK for building and executing commands against the API. Options are limited in this
initial release, but here is an example of how to disable Pi-Hole filtering for 1 minute.

```ruby
require 'pihole'

location = 'http://192.168.1.4'

# Define this in an environment variable rather than saving it in your script.
# https://www.rubyguides.com/2019/01/ruby-environment-variables/
api_key = 'my-super-secret-api-key'

endpoint = PihHole::Endpoiont.new location: location, api_key: api_key

# Duration is in seconds
command = PiHole::DisableCommand.new(duration: 60)

endpoint.execute command
```

The library also includes a status command that returns whether or not Pi-Hole is currently disabled.

## Future

Pi-Hole's HTTP API is currently undergoing a re-write. This 0.1.x release will continue to track the old API. If and
when Pi-Hole releases the overhauled API features a future 1.x release of this SDK will track those features.
