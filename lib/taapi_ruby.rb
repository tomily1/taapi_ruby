# frozen_string_literal: true

require 'taapi_ruby/version'
require 'taapi_ruby/configuration'
require 'taapi_ruby/client'

module TaapiRuby
  class Error < StandardError; end

  class << self
    attr_accessor :configuration

    def configuration # rubocop:disable Lint/DuplicateMethods
      @configuration ||= Configuration.new
    end

    def configure
      yield(configuration)
    end
  end
end
