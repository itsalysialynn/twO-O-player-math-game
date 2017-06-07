class Player
   attr_accessor :lives
  attr_accessor :turn
  attr_accessor :dead

  STARTING_LIFE_COUNT = 3

  def initialize
    @lives = STARTING_LIFE_COUNT
    @dead = false
  end

end
