onReady = ->
  mainItems = $('#J_LikeCon>li>.photo>a')

  effectiveUrls = []

  for ele in mainItems
    do (ele) ->
      if ($(ele).attr('href') != '')
        effectiveUrls.push($(ele).attr('href'))


  async.mapLimit(effectiveUrls, 1,
    (url, callback)->
      w = open(url)
      w.onunload = ->
        callback(null, url)

  , (err, result)->
    console.log('done', result)
    $("body").prepend(result + 'down');
  )


$("body").prepend('<button id = "myActionBtn">action</button>');

setTimeout(
  ->
    $('button#myActionBtn').on('click',
      ->
        onReady()
    )
, 3000)

