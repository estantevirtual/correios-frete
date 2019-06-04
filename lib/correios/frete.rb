# encoding: UTF-8
require 'log-me'

module Correios
  module Frete
    extend LogMe

    module Timeout
      DEFAULT_OPEN_TIMEOUT = 4
      DEFAULT_READ_TIMEOUT = 6

      attr_writer :open_timeout, :read_timeout

      def open_timeout
        (@open_timeout ||= DEFAULT_OPEN_TIMEOUT).to_i
      end

      def read_timeout
        (@read_timeout ||= DEFAULT_READ_TIMEOUT).to_i
      end
    end

    extend Timeout
  end
end
