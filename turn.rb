class Turn < Game 
  attr_accessor :current_player
  attr_accessor :answer

  def initialize(player1, player2, gameover, current_player, answer) 
    super(player1, player2, gameover) 
    @@current_player = current_player
    @answer = answer
  end  
end