class Game

  def initialize
    @player1 = Player.new
    @player2 = Player.new
    @player1.turn = true
  end

  def play
    p 'Welcome!'
    while !game_over?
      turn = Turn.new
      @question = turn.question
      @answer = turn.answer
      if @player1.turn
        p "Player 1: #{@question}"
      else
        p "Player 2: #{@question}"
      end
      check
    end
  end

  def check 
    if STDIN.gets.chomp.to_i == @answer
      p 'Correct!'
      if @player1.turn
        @player1.turn = false
        @player2.turn = true
      else 
        @player2.turn = false
        @player1.turn = true
      end
      score_string
    else
      p 'Wrong!'
      if @player1.turn
        @player1.lives -= 1
        @player1.turn = false
        @player2.turn = true
      else 
        @player2.lives -= 1
        @player2.turn = false
        @player1.turn = true
      end
      score_string
    end
  end

  def score_string
    p "Player 1: #{@player1.lives}/3 vs. Player 2: #{@player2.lives}/3"
  end


  def game_over?

    if @player1.lives <= 0
      @player1.dead = true
    end
    if @player2.lives <= 0
      @player2.dead = true
    end
    if @player1.dead || @player2.dead
      puts 'Game over. Lives are over'
      true
    else
      false
    end
  end
end


