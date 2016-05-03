request = new XMLHttpRequest

do ->

  $searchInput = document.getElementById 'search'
  $output      = document.getElementById 'results'
  $entriesBox  = document.getElementById 'entries'
  $$letters    = Array.prototype.slice.apply(document.querySelectorAll('.alphabet ul li a'))
  $$entries    = []
  jargon       = {}

  unhighlightLetters = ()->

    $$letters.map (letterLi)-> letterLi.classList.remove 'highlighted' 

  createEntriesSelectableList = (jargon)->

    for key, value of jargon
      anchor = document.createElement "a"
      anchor.href = "?term=#{key}"
      anchor.textContent = key
      li = document.createElement "li" 
      li.setAttribute "class", key.slice(0,1).toLowerCase()
      li.appendChild anchor
      $entriesBox.appendChild li
      $$entries = $entriesBox.querySelectorAll 'li'
      $$entries = Array.prototype.slice.apply $$entries

  createSelectableAlphabet = ()->

    document.getElementById("alphabet")
    .addEventListener "click", (e)->
      e.preventDefault()
      e.stopPropagation()
      unhighlightLetters() 
      e.target.classList.add 'highlighted'
      letter = e.target.textContent.toLowerCase()
      $output.querySelector('.entry').innerHTML = ""
      $entriesBox.classList.remove "hide"
      $entriesBox.classList.add "fold"
      $$entries.map (li)->
        if li.classList.contains(letter)
          li.classList.add 'selected'
        else 
          li.classList.remove 'selected'

  displayEntry = (key)->

    $entriesBox.classList.add "hide"
    $output.querySelector('.entry').innerHTML = jargon[key.toLowerCase()]
    location.href = location.href.split("#")[0] + "#" + key

  initializeList = ()->
    $entriesBox.addEventListener "click", (e)->
      e.preventDefault()
      e.stopPropagation()
      displayEntry(e.target.textContent)

  getEntriesObject = (data)->

    return data.map (entry)->
      key = entry.name
      key = key.toLowerCase()
      key = key
      .replace('.','')
      .replace(' ','')
      .replace('(','')
      .replace(')','')
      jargon[key] = entry.html
      return entry.name

  initSearch = (data)->

    # Create object that will hold entry names and HTML
    entries = getEntriesObject(data)

    # Check URL #hash and load term accordingly
    if location.hash isnt "" then displayEntry location.hash.slice(1)

    document.querySelector('.entry').addEventListener "click", (e)->
      if e.target.href.match(/\.md$/)
        e.preventDefault()
        e.stopPropagation()
        term = e.target.pathname.slice(1).split('.md')[0]
        displayEntry term

    createEntriesSelectableList(jargon)
    createSelectableAlphabet()
    initializeList()

    # Initialize filtering
    h = horsey($searchInput, {
        suggestions : entries
        limit       : 8
        set: (value)->
          $searchInput.value = value
          displayEntry(value)
          unhighlightLetters() 

      })

  request.open 'GET', 'js/entries.json', true

  request.onload = ->
    if request.status >= 200 and request.status < 400 
      data = JSON.parse(request.responseText)
      initSearch data

  request.onerror = ->
    return

  request.send()