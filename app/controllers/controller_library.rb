module ControllerLibrary
  def hangman 
    session[:hangman]
  end

  def difficulty
    session[:game_dificulty]
  end

  def hangman_start(level)
    session[:hangman] = Hangman.new(level)
    hangman.start
  end

  def hangman_setup(level)
    session[:game_dificulty] = level 
   end

  def show_blanket
    hangman.show
  end

  def open_blanket
    hangman.start
  end

  def send_question(guess)
    hangman.send_question(guess)
  end

  def lives_left
    #hangman.lives_left
  end

end