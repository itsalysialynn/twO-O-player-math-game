class Game 
  attr_accessor :player1  
  attr_accessor :player2
  attr_accessor :gameover

  def initialize(player1, player2, gameover) 
      @player1 = player1
      @player2 = player2
      @gameover = gameover
  end  

  def mount(turn)
    @turn = turn
  end

  def mount(players)
    @players = player
  end
end
