# frozen_string_literal: true

require 'spec_helper'

RSpec.describe TaapiRuby::Configuration do
  it 'allows setting and getting the API key' do
    config = TaapiRuby::Configuration.new
    config.api_key = 'test_api_key'
    expect(config.api_key).to eq('test_api_key')
  end
end
