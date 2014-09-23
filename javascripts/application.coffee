---
---
$ ->
  # Example for autocompete
  $address = $("#street-name")
  if $address.length
    # Autocomplete search on SBK's address API
    $address.autocomplete
      source: (request, response) ->
        $.ajax
          url: "//xyz.malmo.se/rest/1.0/addresses/"
          dataType: "jsonp"
          data:
            q: request.term
            items: 10
          success: (data) ->
            response $.map data.addresses, (item) ->
              label: "#{item.name} (#{item.towndistrict})"
              value: item.name
      minLength: 2

  # Prevent submissions of dummy forms
  $(".example form").submit (event) ->
    alert "Only a dummy form"
    event.preventDefault()

  $("#load-more").click (event) ->
    event.preventDefault()
    $(@).text("Loading …").closest("li").addClass('disabled')
    setTimeout ->
      $("#load-more").text("Load more").closest("li").removeClass('disabled')
    , 1000

  $('#start-date').datepicker
    weekStart: 1
    language: "sv"
    autoclose: true
    todayHighlight: true
