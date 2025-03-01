# shell_ev
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module ShellEv
  # InternalErrorObject Model.
  class InternalErrorObject < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Error code
    # @return [String]
    attr_accessor :code

    # Error description in English
    # @return [String]
    attr_accessor :message

    # Technical details of the error message, the example which is given in the
    # sample payload is one of the scenario. actual response will vary based on
    # the technical nature
    # @return [String]
    attr_accessor :description

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['code'] = 'code'
      @_hash['message'] = 'message'
      @_hash['description'] = 'description'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        code
        message
        description
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(code = SKIP, message = SKIP, description = SKIP)
      @code = code unless code == SKIP
      @message = message unless message == SKIP
      @description = description unless description == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      code = hash.key?('code') ? hash['code'] : SKIP
      message = hash.key?('message') ? hash['message'] : SKIP
      description = hash.key?('description') ? hash['description'] : SKIP

      # Create object from extracted values.
      InternalErrorObject.new(code,
                              message,
                              description)
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} code: #{@code}, message: #{@message}, description: #{@description}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} code: #{@code.inspect}, message: #{@message.inspect}, description:"\
      " #{@description.inspect}>"
    end
  end
end
