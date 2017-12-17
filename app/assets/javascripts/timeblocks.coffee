$(document).on 'turbolinks:load', ->
  setInterval(pomodoroTimer, 1000)

minutesSinceMidnight = (d) ->
  e = new Date(d)
  (d - e.setHours(0, 0, 0, 0)) / 60000

setHeight = (height, block) ->
  $("#time-block-#{block}").css('height', "#{height}px")


doSetTimeout = (i, block, height) ->
  delay = 1000 # 1min
  setTimeout (->
    setHeight(height, block)
  ), i * delay

pomodoroTimer = ->
  # Set timer
  d = new Date
  $('#pomodoro-timer').html(d.toLocaleTimeString())

  # Set blocks
  numberOfBlocks = minutesSinceMidnight(new Date) / 10
  block = numberOfBlocks + 1
  partialBlock = Math.floor(numberOfBlocks % 1 * 10) / 10

  # Set height of filled blocks
  for i in [0.. numberOfBlocks]
    $("#time-block-#{i}").css('height', '100px')

  # Set height of partial block
  $("#time-block-#{Math.floor(numberOfBlocks) + 1}").css('height', "#{ 100 * partialBlock }px")
