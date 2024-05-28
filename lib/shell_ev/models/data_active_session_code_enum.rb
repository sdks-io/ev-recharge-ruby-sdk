# shell_ev
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module ShellEv
  # Session code e.g InternalError
  class DataActiveSessionCodeEnum
    DATA_ACTIVE_SESSION_CODE_ENUM = [
      # TODO: Write general description for INTERNALERROR
      INTERNALERROR = 'InternalError'.freeze,

      # TODO: Write general description for SERVICEUNAVAILABLE
      SERVICEUNAVAILABLE = 'ServiceUnavailable'.freeze,

      # TODO: Write general description for CHARGETOKENNOTSUPPORTED
      CHARGETOKENNOTSUPPORTED = 'ChargeTokenNotSupported'.freeze,

      # TODO: Write general description for SESSIONINVALID
      SESSIONINVALID = 'SessionInvalid'.freeze,

      # TODO: Write general description for EVNOTCONNECTEDTOEVSE
      EVNOTCONNECTEDTOEVSE = 'EvNotConnectedToEvse'.freeze,

      # TODO: Write general description for EVSEINUSE
      EVSEINUSE = 'EvseInUse'.freeze,

      # TODO: Write general description for EVSEOUTOFSERVICE
      EVSEOUTOFSERVICE = 'EvseOutOfService'.freeze,

      # TODO: Write general description for EVSENOTFOUND
      EVSENOTFOUND = 'EvseNotFound'.freeze,

      # TODO: Write general description for EVSENOTSUPPORTED
      EVSENOTSUPPORTED = 'EvseNotSupported'.freeze
    ].freeze

    def self.validate(value)
      return false if value.nil?

      DATA_ACTIVE_SESSION_CODE_ENUM.include?(value)
    end
  end
end