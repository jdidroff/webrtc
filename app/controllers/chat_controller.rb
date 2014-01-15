class ChatController < WebsocketRails::BaseController

  def initialize_session
    controller_store[:message_count] = 0
  end

  def connected
    return if current_user.blank?
    conn = current_user.connections.by_session_id(session[:session_id])
    if conn.blank?
      conn = User::Connection.create(session_id: session[:session_id], connection_id: connection.id)
      current_user.connections << conn
      broadcast_message :connected, message: "#{user} has connected!", id: current_user.id.to_s, user_name: user
    else
      conn.update_attributes(connection_id: connection.id, connected_at: Time.now)
    end
  end

  def disconnected
    broadcast_message :disconnected, message: "#{user} has disconnected!"
  end

  def send_message
    ChatHistory.create(message: message[:message], user_name: user)
    broadcast_message :message_sent, message: "#{Time.now.localtime.strftime('%d.%m.%Y %H:%M:%S')} #{user}: #{message[:message]}"
  end

  private

  def user
    @user ||= current_user.try(:name) || 'Anonymous'
  end

end
