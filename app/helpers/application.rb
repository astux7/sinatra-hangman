helpers do

  def game_dificulty
    session[:game_dificulty].nil? ? "" : session[:game_dificulty]
  end

  def blanket
    game_finished? || !session[:answer_show].nil? ? session[:answer_show] : show_blanket
  end

  def lives_stat_output
    "Lives left: <span id='lives-left'>" + hangman.lives_left.to_s+ "</span> / <span id='lives'>" + hangman.lives.to_s + "</span>"
  end

  def missed_words
    hangman.missed.join(", ")
  end

end