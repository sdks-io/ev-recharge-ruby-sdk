# shell_ev
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module ShellEv
  # M405ErrorResponseError Model.
  class M405ErrorResponseError < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Error code that logically best represents the error encountered
    # @return [String]
    attr_accessor :code

    # Description of the error type
    # @return [String]
    attr_accessor :title

    # Details of the error that can help under the cause of the error
    # @return [String]
    attr_accessor :detail

    # Details of the error that can help under the cause of the error
    # @return [Hash[String, String]]
    attr_accessor :additional_info

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['code'] = 'Code'
      @_hash['title'] = 'Title'
      @_hash['detail'] = 'Detail'
      @_hash['additional_info'] = 'AdditionalInfo'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        additional_info
      ]
    end

    # An array for nullable fields
    def self.nullables
      %w[
        additional_info
      ]
    end

    def initialize(code = nil,
                   title = nil,
                   detail = nil,
                   additional_info = SKIP)
      @code = code
      @title = title
      @detail = detail
      @additional_info = additional_info unless additional_info == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      code = hash.key?('Code') ? hash['Code'] : nil
      title = hash.key?('Title') ? hash['Title'] : nil
      detail = hash.key?('Detail') ? hash['Detail'] : nil
      additional_info =
        hash.key?('AdditionalInfo') ? hash['AdditionalInfo'] : SKIP

      # Create object from extracted values.
      M405ErrorResponseError.new(code,
                                 title,
                                 detail,
                                 additional_info)
    end
  end
end
