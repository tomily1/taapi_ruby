# frozen_string_literal: true

require 'net/http'
require 'json'

module TaapiRuby
  class Client
    BASE_URL = 'https://api.taapi.io'

    def initialize
      @api_key = TaapiRuby.configuration.api_key
    end

    def get_indicator(indicator, params = {})
      uri = URI("#{BASE_URL}/#{indicator}")
      uri.query = URI.encode_www_form(params.merge(apikey: @api_key))
      response = Net::HTTP.get(uri)
      JSON.parse(response)
    end
  end
end
