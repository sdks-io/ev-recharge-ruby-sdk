# shell_ev
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module ShellEv
  # Source of the last update
  class ConnectorVOUpdatedByEnum
    CONNECTOR_VO_UPDATED_BY_ENUM = [
      # TODO: Write general description for FEED
      FEED = 'Feed'.freeze,

      # TODO: Write general description for ADMIN
      ADMIN = 'Admin'.freeze,

      # TODO: Write general description for TARIFFSERVICE
      TARIFFSERVICE = 'TariffService'.freeze,

      # TODO: Write general description for DEFAULTS
      DEFAULTS = 'Defaults'.freeze
    ].freeze

    def self.validate(value)
      return false if value.nil?

      CONNECTOR_VO_UPDATED_BY_ENUM.include?(value)
    end
  end
end
