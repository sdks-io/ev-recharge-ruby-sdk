# shell_ev
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module ShellEv
  # GetMarkersListAuthorizationMethods.
  class GetMarkersListAuthorizationMethodsEnum
    GET_MARKERS_LIST_AUTHORIZATION_METHODS_ENUM = [
      # TODO: Write general description for NEWMOTIONAPP
      NEWMOTIONAPP = 'NewMotionApp'.freeze,

      # TODO: Write general description for RFIDTOKEN
      RFIDTOKEN = 'RFIDToken'.freeze,

      # TODO: Write general description for PNC
      PNC = 'PnC'.freeze
    ].freeze

    def self.validate(value)
      return false if value.nil?

      GET_MARKERS_LIST_AUTHORIZATION_METHODS_ENUM.include?(value)
    end
  end
end
