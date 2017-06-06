class Players < Game
  attr_accessor :lives

  def initialize(player1, player2, gameover, lives) 
    super(player1, player2, gameover) 
    @lives = lives
  end  

  @player1=Player.new('player 1')
  @player2=Player.new('player 2')

end

 x