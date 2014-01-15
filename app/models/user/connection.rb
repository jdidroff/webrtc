class User::Connection

  include Mongoid::Document

  belongs_to :user

  field :session_id

  field :connection_id

  field :connected_at, type: Time, default: ->{ Time.now }

  index({ connected_at: 1 }, { expire_after_seconds: 60*5 })

  def self.by_session_id(session_id)
    where(session_id: session_id).first
  end

end