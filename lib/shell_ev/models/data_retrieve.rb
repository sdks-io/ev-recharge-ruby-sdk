# shell_ev
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

require 'date'
module ShellEv
  # DataRetrieve Model.
  class DataRetrieve < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Id of the session
    # @return [UUID | String]
    attr_accessor :id

    # Id of the user that started the session
    # @return [String]
    attr_accessor :user_id

    # Id of the evse that the user is charging
    # @return [String]
    attr_accessor :ema_id

    # Ema-id of the charge token that is used
    # @return [String]
    attr_accessor :evse_id

    # Last updated date
    # @return [String]
    attr_accessor :last_updated

    # When the session is started
    # @return [DateTime]
    attr_accessor :started_at

    # When the session is stopped
    # @return [DateTime]
    attr_accessor :stopped_at

    # When the session is stopped
    # @return [ChargeRetrieveState]
    attr_accessor :session_state

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['id'] = 'id'
      @_hash['user_id'] = 'userId'
      @_hash['ema_id'] = 'emaId'
      @_hash['evse_id'] = 'evseId'
      @_hash['last_updated'] = 'lastUpdated'
      @_hash['started_at'] = 'startedAt'
      @_hash['stopped_at'] = 'stoppedAt'
      @_hash['session_state'] = 'sessionState'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        id
        user_id
        ema_id
        evse_id
        last_updated
        started_at
        stopped_at
        session_state
      ]
    end

    # An array for nullable fields
    def self.nullables
      %w[
        stopped_at
      ]
    end

    def initialize(id = SKIP, user_id = SKIP, ema_id = SKIP, evse_id = SKIP,
                   last_updated = SKIP, started_at = SKIP, stopped_at = SKIP,
                   session_state = SKIP)
      @id = id unless id == SKIP
      @user_id = user_id unless user_id == SKIP
      @ema_id = ema_id unless ema_id == SKIP
      @evse_id = evse_id unless evse_id == SKIP
      @last_updated = last_updated unless last_updated == SKIP
      @started_at = started_at unless started_at == SKIP
      @stopped_at = stopped_at unless stopped_at == SKIP
      @session_state = session_state unless session_state == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      id = hash.key?('id') ? hash['id'] : SKIP
      user_id = hash.key?('userId') ? hash['userId'] : SKIP
      ema_id = hash.key?('emaId') ? hash['emaId'] : SKIP
      evse_id = hash.key?('evseId') ? hash['evseId'] : SKIP
      last_updated = hash.key?('lastUpdated') ? hash['lastUpdated'] : SKIP
      started_at = if hash.key?('startedAt')
                     (DateTimeHelper.from_rfc3339(hash['startedAt']) if hash['startedAt'])
                   else
                     SKIP
                   end
      stopped_at = if hash.key?('stoppedAt')
                     (DateTimeHelper.from_rfc3339(hash['stoppedAt']) if hash['stoppedAt'])
                   else
                     SKIP
                   end
      session_state = ChargeRetrieveState.from_hash(hash['sessionState']) if hash['sessionState']

      # Create object from extracted values.
      DataRetrieve.new(id,
                       user_id,
                       ema_id,
                       evse_id,
                       last_updated,
                       started_at,
                       stopped_at,
                       session_state)
    end

    def to_custom_started_at
      DateTimeHelper.to_rfc3339(started_at)
    end

    def to_custom_stopped_at
      DateTimeHelper.to_rfc3339(stopped_at)
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} id: #{@id}, user_id: #{@user_id}, ema_id: #{@ema_id}, evse_id: #{@evse_id},"\
      " last_updated: #{@last_updated}, started_at: #{@started_at}, stopped_at: #{@stopped_at},"\
      " session_state: #{@session_state}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} id: #{@id.inspect}, user_id: #{@user_id.inspect}, ema_id:"\
      " #{@ema_id.inspect}, evse_id: #{@evse_id.inspect}, last_updated: #{@last_updated.inspect},"\
      " started_at: #{@started_at.inspect}, stopped_at: #{@stopped_at.inspect}, session_state:"\
      " #{@session_state.inspect}>"
    end
  end
end
