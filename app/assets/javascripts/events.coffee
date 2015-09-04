# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$ ->
  $('.markButton').click ->
    button = $(this)

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