helpers do

  def game_dificulty
    session[:game_dificulty].nil? ? "" : session[:game_dificulty]
  end

  def blanket
    show_blanket
  end

end