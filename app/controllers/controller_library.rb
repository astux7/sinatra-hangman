module ControllerLibrary
  def hangman 
    session[:hangman]
  end

  def difficulty
    session[:game_dificulty]
  end

  def hangman_start(level)
    session[:hangman] = Hangman.new(level)
    session[:answer_show] = nil
    hangman.start
  end

  def hangman_setup(level)
    session[:game_dificulty] = level 
   end

  def show_blanket
    hangman.show
  end

  def send_question(guess)
    hangman.send_question(guess)
  end

  def finished_game
    hangman.stop
  end

  def game_finished?
    hangman.game_finished? 
  end

end