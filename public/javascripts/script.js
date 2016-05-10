'use strict';

$(function() {
  $('form').submit(function(e) {
    e.preventDefault();
    $.ajax('/', {
      method: 'POST',
      data: { names: $(e.currentTarget).find('textarea').val() },
      success: function(pairs) {
        for (var idx in pairs) {
          $('#pairs').append(pairs[idx].join(' <-> ')).append('<br><br>');
        }
      }
    })
  })
});
