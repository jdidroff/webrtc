$ ->

  $('#chat-form').submit ->
    dispatcher.trigger('send_message', message: $(this).find('#message').val())
    $(this).find('#message').val('')
    false

  dispatcher.bind 'message_sent', (data) ->
    history = $('#chat-form').find('#history').val()
    history += "\n" if history isnt ''
    history += data.message
    $('#chat-form').find('#history').val(history)