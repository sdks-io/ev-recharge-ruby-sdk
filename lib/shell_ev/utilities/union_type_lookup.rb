# shell_ev
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module ShellEv
  # The `UnionTypeLookUp` class serves as a utility class for
  # storing and managing type combinator templates. It acts as a container for the templates
  # used in handling various oneof/anyof instances within the sdk.
  class UnionTypeLookUp
    include CoreLibrary
    # rubocop:disable Lint/RedundantCopDisableDirective, Style/HashSyntax, Layout/FirstArgumentIndentation
    def self.union_types
      {
        :LocationMarker => OneOf.new(
          [
            LeafType.new(SingleLocationMarker, UnionTypeContext.new(
              discriminator_value: 'SingleLocation',
              discriminator: 'markerType'
            )),
            LeafType.new(MultiLocationMarker, UnionTypeContext.new(
              discriminator_value: 'MultiLocation',
              discriminator: 'markerType'
            ))
          ],
          UnionTypeContext.new(
            is_array: true,
            is_optional: true
          )
        )
      }
    end
    # rubocop:enable Lint/RedundantCopDisableDirective, Style/HashSyntax, Layout/FirstArgumentIndentation

    def self.get(name)
      UnionTypeLookUp.union_types[name]
    end
  end
end
