# shell_ev
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module ShellEv
  # Indicates overall status of the request
  class InlineResponse202StatusEnum
    INLINE_RESPONSE202_STATUS_ENUM = [
      # TODO: Write general description for SUCCESS
      SUCCESS = 'SUCCESS'.freeze,

      # TODO: Write general description for FAILED
      FAILED = 'FAILED'.freeze
    ].freeze

    def self.validate(value)
      return false if value.nil?

      INLINE_RESPONSE202_STATUS_ENUM.include?(value)
    end
  end
end
