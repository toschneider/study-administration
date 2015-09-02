update_stars = ->
  $('.star_rating_form').each ->
    form_id = $(this).attr('id')
    set_stars form_id, $('#' + form_id + '_stars').val()
    return
  return

set_stars = (form_id, stars) ->
  i = 1
  while i <= 5
    if i <= stars
      $('#' + form_id + '_' + i).addClass 'on'
    else
      $('#' + form_id + '_' + i).removeClass 'on'
    i++
  return

$ ->
  $('.rating_star').click ->
    star = $(this)

    form_id = star.attr('data-form-id')
    stars = star.attr('data-stars')
    $('#' + form_id + '_stars').val stars
    $.ajax
      type: 'post'
      url: $('#' + form_id).attr('action') + '.json'
      data: $('#' + form_id).serialize()
      success: (response) ->
        console.log response
        
        update_stars()
        if response['avg_rating']
          $('#average_rating').text response['avg_rating']
        return
      error: (xhr, ajaxOptions, thrownError) ->
        alert thrownError
    return
  return