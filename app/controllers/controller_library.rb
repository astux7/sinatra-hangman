module ControllerLibrary
  def hangman 
    # session[:hangman]

     settings.hangman_game
   
  end

  def difficulty
    session[:game_dificulty]
  end

  def hangman_start(level, my_word = nil)
    
   # $hangman_game = Hangman.new(level,my_word)
    # Sinatra::Application.set :hangman_game, Hangman.new(level,my_word)

    session[:hangman] =  settings.hangman_game #Hangman.new(level,my_word)
    session[:answer_show] = nil
    hangman.start
  end

  def hangman_setup(level)
    session[:game_dificulty] = level 
   end

  def show_blanket
    hangman.show
  end

  def won?
    hangman.won?
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
      flash[:errors] = "Incorrect answer!"
    end
  end
  def lives_stat_output_api
    "Lives left: " + hangman.lives_left.to_s+ "/" + hangman.lives.to_s 
  end

end