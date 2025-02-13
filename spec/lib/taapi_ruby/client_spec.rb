# frozen_string_literal: true

require 'spec_helper'
require 'webmock/rspec'

RSpec.describe TaapiRuby::Client do
  before do
    TaapiRuby.configure do |config|
      config.api_key = 'test_api_key'
    end
  end

  let(:client) { TaapiRuby::Client.new }

  it 'makes a request to the taapi.io API' do
    stub_request(:get, 'https://api.taapi.io/rsi?exchange=binance&interval=1h&secret=test_api_key&symbol=BTC/USDT')
      .to_return(status: 200, body: '{"value": 70}', headers: { 'Content-Type' => 'application/json' })

    response = client.get_indicator('rsi', symbol: 'BTC/USDT', interval: '1h', exchange: 'binance')
    expect(response['value']).to eq(70)
  end
end
