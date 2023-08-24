# frozen_string_literal: true

module Sidekiq

  class Logger < ::Logger

    module Formatters

      class Datadog < Base

        def call(severity, time, program_name, message_or_error)
          hash = {
            timestamp:    time.utc.iso8601(3),
            pid:          ::Process.pid,
            tid:          tid,
            level:        severity,
            source:       'sidekiq',
            program_name: program_name
          }

          if message_or_error.is_a?(Hash) && message_or_error[:error].present?
            hash[:error] = message_or_error[:error]
          else
            hash[:message] = message_or_error
          end

          c = ctx
          hash[:job] = c unless c.empty?

          Sidekiq.dump_json(hash) << "\n"
        end

      end

    end

  end

end
