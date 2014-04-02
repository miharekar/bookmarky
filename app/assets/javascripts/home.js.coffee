# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$ ->
  engine = new Bloodhound(
    remote: '/tags?q=%QUERY'
    datumTokenizer: Bloodhound.tokenizers.obj.whitespace('value'),
    queryTokenizer: Bloodhound.tokenizers.whitespace
  )

  engine.initialize()

  $("#bookmark_tags").tokenfield
    typeahead:
        source: engine.ttAdapter()
