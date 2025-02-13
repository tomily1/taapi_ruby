# taapi_ruby
Simple Wrapper to make API request to TAAPI.io API.


## Installation

Add this line to your application's Gemfile:

```ruby
gem 'taapi_ruby'
```

And then execute:

```sh
bundle install
```

Or install it yourself as:

```sh
gem install taapi_ruby
```

## Usage
### Configuration

First, configure the gem with your TAAPI.io API key. You can do this in an initializer file in a Rails application or at the start of your script:

```ruby
TaapiRuby.configure do |config|
  config.api_key = 'your_api_key_here'
end
```

### Making API Requests

Create a client instance and use it to make requests to the TAAPI.io API. For example, to get the RSI indicator:


```ruby
client = TaapiRuby::Client.new
response = client.get_indicator('rsi', symbol: 'BTC/USD', interval: '1h')
puts response
```

### Example Response
The response will be a parsed JSON object. For example:

```ruby
{
  "value": 70
}
```
