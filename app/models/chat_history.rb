class ChatHistory

  include Mongoid::Document
  include Mongoid::Timestamps

  field :message

  field :user_name

  def self.for_textarea
    all.map { |m| "#{m.created_at.localtime.strftime('%d.%m.%Y %H:%M:%S')} :: #{m.user_name}: #{m.message}" }.join("\n").html_safe
  end

end