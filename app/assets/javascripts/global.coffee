$(document).on 'turbolinks:load', ->
    initializeAll()

initializeAll = ->
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