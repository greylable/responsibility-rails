$(document).on 'turbolinks:load', ->
    initializeAll()

initializeAll = ->
  console.log 'initialized'
  initialized = true

  initializeModal()
  initializeDatePicker()

initializeModal = ->
  $('.modal').modal()

initializeDatePicker = ->
  $('.datepicker').pickadate
    selectMonths: true
    selectYears: 15
    today: 'Today'
    clear: 'Clear'
    close: 'Ok'
    closeOnSelect: false



$(document).on 'click', '.modal-trigger', () ->
  console.log 'clicked'

document.addEventListener 'turbolinks:before-cache', ->
  $('.modal').modal()
  return