# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).on 'turbolinks:load', ->
  for i in [0..9]
    doSetTimeout i

increaseHeight = (height) ->
  $('.block').css('height', "#{height}px")


doSetTimeout = (i) ->
  delay = 1000 # milliseconds
  setTimeout (->
    increaseHeight(10*i)
  ), i * 1000

