$ ->

  showStatus = (message) ->
    $('#user-status').find('.content').html(message)
    $('#user-status').fadeIn(500)
    setTimeout ->
        $('#user-status').fadeOut(500)
      , 3000

  dispatcher.bind 'connected', (data) ->
    showStatus(data.message)
    li = $(".user-name")
    name = "<li class=#{data.id}>#{data.user_name}</li>"
    $("#{data.id}").find('.status').html('online')
    #li.append name

  dispatcher.bind 'disconnected', (data) ->
    showStatus(data.message)
