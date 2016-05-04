request = new XMLHttpRequest

initParticles = ()->

  particlesJS 'particles-js',
    'particles':
      'number':
        'value': 80
        'density':
          'enable': true
          'value_area': 800
      'color': 'value': '#8C867B'
      'shape':
        'type': 'circle'
        'stroke':
          'width': 0
          'color': '#000000'
        'polygon': 'nb_sides': 5
        'image':
          'src': 'img/github.svg'
          'width': 100
          'height': 100
      'opacity':
        'value': 0.5
        'random': false
        'anim':
          'enable': false
          'speed': 1
          'opacity_min': 0.1
          'sync': false
      'size':
        'value': 3
        'random': true
        'anim':
          'enable': false
          'speed': 40
          'size_min': 0.1
          'sync': false
      'line_linked':
        'enable': true
        'distance': 150
        'color': '#8C867B'
        'opacity': 0.4
        'width': 1
      'move':
        'enable': true
        'speed': 2
        'direction': 'none'
        'random': false
        'straight': false
        'out_mode': 'out'
        'bounce': false
        'attract':
          'enable': false
          'rotateX': 600
          'rotateY': 1200
    'interactivity':
      'detect_on': 'canvas'
      'events':
        'onhover':
          'enable': true
          'mode': 'grab'
        'onclick':
          'enable': true
          'mode': 'push'
        'resize': true
      'modes':
        'grab':
          'distance': 140
          'line_linked': 'opacity': 1
        'bubble':
          'distance': 400
          'size': 40
          'duration': 2
          'opacity': 8
          'speed': 3
        'repulse':
          'distance': 200
          'duration': 0.4
        'push': 'particles_nb': 4
        'remove': 'particles_nb': 2
    'retina_detect': true


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
      anchor.textContent = jargon[key].public
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

  cleanKey = (key)->
    return key
    .toLowerCase()
    .replace('.','')
    .replace(' ','')
    .replace('(','')
    .replace(')','')
    .replace('-','')
    .replace('_','')

  displayEntry = (key)->

    key = cleanKey(key)
    $entriesBox.classList.add "hide"
    $output.querySelector('.entry').innerHTML = jargon[key].html
    location.href = location.href.split("#")[0] + "#" + key

  initializeList = ()->
    $entriesBox.addEventListener "click", (e)->
      e.preventDefault()
      e.stopPropagation()
      displayEntry(e.target.textContent)

  getEntriesObject = (data)->

    return data.map (entry)->
      key = entry.name
      key = cleanKey(key)
      jargon[key] = { html: entry.html, public: entry.name }
      return entry.name

  initSearch = (data)->

    # Create object that will hold entry names and HTML
    entries = getEntriesObject(data)

    # Check URL #hash and load term accordingly
    if location.hash isnt "" then displayEntry location.hash.slice(1)

    document.querySelector('.entry').addEventListener "click", (e)->
      return unless e.target.href 
      if e.target.href.match(/\.md$/)
        e.preventDefault()
        e.stopPropagation()
        term = e.target.pathname.split('/')
        term = term.slice(-1)[0].split('.md')[0]
        displayEntry term
      else
        e.target.setAttribute "target", "_blank"

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

  setTimeout( ()->
    initParticles()
  , 500 )