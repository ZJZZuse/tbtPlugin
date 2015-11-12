window.myCommonToolsZ =

  fireActionAtDomAppear: (selector, action, delay = 100) ->
    $('body').on('DOMSubtreeModified',
      ->
        if $(selector).length != 0

          setTimeout(->
            action($(selector))
          , delay)
    )

  fireActionInCondition: (condionF, action, delay = 100) ->
    $('body').on('DOMSubtreeModified',
      ->
        if condionF.call()
          setTimeout(->
            action.call()
          , delay)
    )

  fireActionByCusCondition: (condionF, action, interval = 100, delay = 100) ->
    setInterval(->
      if condionF()
        setTimeout(->
          action()
        , delay)

    , interval)