module ControllerLibrary
  def hangman 
    session[:hangman]
  end

  def difficulty
    session[:game_dificulty]
  end

  def hangman_start(level, my_word = nil)
    session[:hangman] = Hangman.new(level,my_word)
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

  def clean_flash
    flash[:errors] = nil
    flash[:notice] = nil
  end

  def answer_message(guess)
    unless hangman.missed.include?(guess)
      flash[:notice] = "Correct answer!"
    else
      flash[:errors] = ["Incorrect answer!"]
    end
  end

end