# shell_ev
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module ShellEv
  # Minimum of all status values in the Marker, e.g. if at least one Evse in the
  # Marker is available, the value will be available
  class SingleLocationMarkerStatusEnum
    SINGLE_LOCATION_MARKER_STATUS_ENUM = [
      # TODO: Write general description for AVAILABLE
      AVAILABLE = 'Available'.freeze,

      # TODO: Write general description for OCCUPIED
      OCCUPIED = 'Occupied'.freeze,

      # TODO: Write general description for UNAVAILABLE
      UNAVAILABLE = 'Unavailable'.freeze,

      # TODO: Write general description for UNKNOWN
      UNKNOWN = 'Unknown'.freeze
    ].freeze

    def self.validate(value)
      return false if value.nil?

      SINGLE_LOCATION_MARKER_STATUS_ENUM.include?(value)
    end
  end
end
