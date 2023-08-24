# frozen_string_literal: true

require 'sidekiq'

require_relative 'tracking/version'
require_relative '../../logger/formatters/datadog'

module Sidekiq

  module Datadog

    module Error

      module Tracking

        # @return The number of characters written
        def self.call(exception, context)
          message = {
            error: {
              kind:    exception.class.name,
              message: exception.message,
              stack:   exception.backtrace
            },
            job:   context
          }

          Sidekiq.logger.error(message)
        end

      end

    end

  end

end
