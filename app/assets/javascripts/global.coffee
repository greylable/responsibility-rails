initialized = false
$(document).on 'turbolinks:load', ->
  if !initialized
    initializeAll()

initializeAll = ->
  console.log 'initialized'
  initialized = true
  Turbolinks.clearCache()
  $('.modal').modal()

  $('.datepicker').pickadate
    selectMonths: true
    selectYears: 15
    today: 'Today'
    clear: 'Clear'
    close: 'Ok'
    closeOnSelect: false

$(document).on 'click', '.modal-trigger', () ->
  console.log 'clicked'