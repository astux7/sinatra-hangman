module ControllerLibrary
  def hangman 
    session[:hangman]
  end

  def hangman_start
    session[:blanket] = Blanket.new(session[:game_dificulty])
    session[:hangman] = Hangman.new
    hangman.start
  end

  def hangman_setup(level)
    session[:game_dificulty] = level 
  #  @hangman.change_level(level.to_sym)
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
    hangman.lives_left
  end

end