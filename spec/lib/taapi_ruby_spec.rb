# frozen_string_literal: true

require 'spec_helper'

RSpec.describe TaapiRuby do
  it 'has a version number' do
    expect(TaapiRuby::VERSION).not_to be nil
  end

  it 'allows configuration of the API key' do
    TaapiRuby.configure do |config|
      config.api_key = 'test_api_key'
    end
    expect(TaapiRuby.configuration.api_key).to eq('test_api_key')
  end
end
