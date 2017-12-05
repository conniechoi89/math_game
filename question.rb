class Question

  attr_accessor :ans, :num1, :num2, :question

  def initialize
    @num1 = rand(1..20)
    @num2 = rand(1..20)
    @ans = num1 + num2
    @question = "what is the answer to #{@num1} + #{@num2}?"
  end

  def question
    @question
  end

end