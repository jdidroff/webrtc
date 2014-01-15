WebsocketRails::EventMap.describe do

  subscribe :client_connected, to: ChatController, with_method: :connected
  subscribe :client_disconnected, to: ChatController, with_method: :disconnected

  subscribe :send_message, to: ChatController, with_method: :send_message

end
