
myCommonToolsZ =

  fireActionAtDomAppear(selector,action) ->
    $('body').on('DOMSubtreeModified',
      ->
        if $(selector).length != 0
          action.call()
    )

