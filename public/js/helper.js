function checkAnswer(){
  if ($('.answer').val() != $('.answer-confirm').val()) {
    alert("Answer and Answer Confirmation is not same word!")
    return false;
  }
  if($('.answer').val().length < 1 || $('.answer-confirm').val().length < 1){
    alert("Please fill the form to continue..")
    return false;
  }
  return true;
}

function checkGuess(){
  if ($('.guess').val().length < 1 || $(".guess").val().length > 30){
    alert("Guess is not fit to the set limits!")
    return false;
  }
  return true;
}