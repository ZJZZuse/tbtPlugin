// Generated by CoffeeScript 1.10.0
(function() {
  var onReady;

  onReady = function() {
    $('.J_TryApply')[0].click();
    return $('body').on('DOMSubtreeModified', function() {
      if ($('.apply-try-address-submit').length !== 0) {
        $('.apply-try-address-submit')[0].click();
        return setTimeout(function() {
          return close();
        }, 3000);
      }
    });
  };

  $('body').on('DOMSubtreeModified', function() {
    if ($('.J_TryApply').length !== 0) {
      return onReady.call();
    }
  });

}).call(this);

//# sourceMappingURL=certainItemContent.js.map
