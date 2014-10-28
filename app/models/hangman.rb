require_relative "blanket"

class Hangman

  attr_accessor :lives, :blanket, :complexity, :my_word

  COMPLEXITY = {:easy => 18, :medium => 13, :hard => 9 }
  
  def initialize(level = :easy, my_word = nil)
    @complexity = COMPLEXITY[level]
    @lives = @complexity
    @blanket = nil
    @my_word = my_word
  end

  def start
    @blanket = Blanket.new(@lives, @my_word)
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

  def won?
    @blanket.won
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