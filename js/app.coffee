request = new XMLHttpRequest

do ->

  $searchInput = document.getElementById 'search'
  $output = document.getElementById 'results'
  jargon = {}

  initSearch = (data)->

    entries = data.map (entry)->
      jargon[entry.name] = entry.html
      return entry.name

    h = horsey($searchInput, {
        suggestions : entries
        limit       : 8
        render: (li,suggestion)-> 
          li.innerHTML = suggestion
        set: (value)->
          $searchInput.value = value
          $output.innerHTML = jargon[value]
      })

    $searchInput.addEventListener 'horsey-filter', (e)->

  request.open 'GET', '/js/data.json', true

  request.onload = ->
    if request.status >= 200 and request.status < 400 
      data = JSON.parse(request.responseText)
      initSearch data

  request.onerror = ->
    return

  request.send()

