require_relative "blanket"

class Hangman
  attr_accessor :lives, :blanket, :complexity
  COMPLEXITY = {:easy => 18, :meddium => 13, :hard => 9 }
  def initialize(level = :easy)
    @complexity = COMPLEXITY[level]
    @lives = @complexity
    @blanket = nil
  end

  def start
    @blanket = Blanket.new(@lives)
    @blanket.show
  end

  def game_finished?
    @blanket.game_finished?
  end
   
  def send_question(letter)
    @blanket.question(letter)
    @blanket.show
  end

  def show
    @blanket.show
  end

  def stop
    @blanket.open
  end

  def continue?
    restart
  end

  def restart
    @lives = @complexity
    start
  end

  def missed
    @blanket.show_missed
  end

  def lives_left
    @blanket.lives_left
  end

end