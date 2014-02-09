$ ->

  showStatus = (message) ->
    $('#user-status').find('.content').html(message)
    $('#user-status').fadeIn(500)
    setTimeout ->
        $('#user-status').fadeOut(500)
      , 3000

  dispatcher.bind 'connected', (data) ->
    showStatus(data.message)
    $('#' + data.id).find('.status').html(' - online')  

  dispatcher.bind 'disconnected', (data) ->
    showStatus(data.message)
