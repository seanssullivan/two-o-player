class Question
  attr_reader(:text)

  def initialize
    num1 = rand(10)
    num2 = rand(10)
    @text = "What does #{num1} plus #{num2} equal?"
    @correct_answer = num1 + num2
  end

  def answer(guess)
    return guess == @correct_answer ? true : false
  end 
end
