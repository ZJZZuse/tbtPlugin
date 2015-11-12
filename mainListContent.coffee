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

    #      callBackT = ->
    #        callback(null, url)


    #      $(w.document.body).data('callbackT', ->
    #        callback(null, url)
    #      )

    myCommonToolsZ.fireActionByCusCondition(
      ->
        w.closed
    ,
    ->
      callback(null, url)
    )

#      setTimeout(
#        ->
#          w.onunload = ->
#            callback(null, url)
#      , 100)


  , (err, result)->
    $("body").prepend("done,count is #{result.length}");
  )

#callBackT = null

main = ->
  $("body").prepend('<button id = "myActionBtn">action</button>');


  #  chrome.extension.onRequest.addListener(()->
  #    console.log('onRequest')
  #    #    callback(null, url)
  ##    callBackT()
  #  )

  setTimeout(
    ->
      $('button#myActionBtn').on('click',
      ->
        onReady()
      )
  , 3000)


outDate = new Date('2015-12-11')

if (outDate > new Date())
  main()
