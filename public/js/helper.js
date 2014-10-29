
function hangmanDrawer() {
  var allLives = $('#lives').html();
  var livesLeft = $('#lives-left').html();
  var imageNo = parseInt(allLives) - parseInt(livesLeft); 
  $('.hangman').css( {'background-image':'url(/images/hangman_parts/'+ imageNo +'.png)'} );
}