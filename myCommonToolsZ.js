// Generated by CoffeeScript 1.9.1
(function() {
  window.myCommonToolsZ = {
    fireActionAtDomAppear: function(selector, action, delay) {
      if (delay == null) {
        delay = 100;
      }
      return $('body').on('DOMSubtreeModified', function() {
        if ($(selector).length !== 0) {
          return setTimeout(function() {
            return action($(selector));
          }, delay);
        }
      });
    },
    fireActionInCondition: function(condionF, action, delay) {
      if (delay == null) {
        delay = 100;
      }
      return $('body').on('DOMSubtreeModified', function() {
        if (condionF.call()) {
          return setTimeout(function() {
            return action.call();
          }, delay);
        }
      });
    },
    fireActionByCusCondition: function(condionF, action, interval, delay) {
      var id;
      if (interval == null) {
        interval = 500;
      }
      if (delay == null) {
        delay = 100;
      }
      return id = setInterval(function() {
        if (condionF()) {
          clearInterval(id);
          return setTimeout(function() {
            return action();
          }, delay);
        }
      }, interval);
    }
  };

}).call(this);

//# sourceMappingURL=myCommonToolsZ.js.map
