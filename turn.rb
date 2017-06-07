class Turn
  attr_reader :question
  attr_reader :answer

  def initialize
    first_num = rand(1..20)
    second_num = rand(1..20)
    @question = "What is #{first_num} + #{second_num}"
    @answer = first_num + second_num
  end
end
