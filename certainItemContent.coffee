onReady = ->
  setTimeout(->
    $('.J_TryApply')[0]?.click()
  , 100)

  $('body').on('DOMSubtreeModified',
    ->
      if $('.apply-try-address-submit').length != 0

        setTimeout(->
          $('.apply-try-address-submit')[0].click()

        , 100)

        setTimeout(
          ->
#            $(document.body).data('callbackT')()
#            chrome.extension.sendRequest({a: 'a'})

            close()
        , 3000
        )
  )


$('body').on('DOMSubtreeModified',
  ->
    if $('.J_TryApply').length != 0
      onReady.call()
)

myCommonToolsZ.fireActionInCondition(
  ->

    $('.apply-try-errmsg .t1').text() == '您已经申请过该试用品,看看其他试用品吧' or $('.apply-try-msg').text() == "申请结果已公布，报告收集中..."
,
  ->
#    chrome.extension.sendRequest({a: 'a'})
    close()
,
  1000
)


