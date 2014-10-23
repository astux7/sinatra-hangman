helpers do

  def game_dificulty
    session[:game_dificulty].nil? ? "" : session[:game_dificulty]
  end

  def blanket
    game_finished? || !session[:answer_show].nil? ? session[:answer_show] : show_blanket
  end

  def lives_stat_output
    "Lives left: " + hangman.lives_left.to_s+ " / " + hangman.lives.to_s 
  end

  def missed_words
    "Missed: " + hangman.missed
  end

end