onReady = ->
  $('.J_TryApply')[0].click()

  $('body').on('DOMSubtreeModified',
    ->
      if $('.apply-try-address-submit').length != 0

        $('.apply-try-address-submit')[0].click()

        setTimeout(
          ->
            close()
        , 3000
        )
  )


$('body').on('DOMSubtreeModified',
  ->
    if $('.J_TryApply').length != 0
      onReady.call()
)
