class Turn
  def initialize(player)
    @player = player
    @question = Question.new
  end

  def question
    @question.text
  end

  def guess(input)
    correct = @question.answer(input.to_i)

    unless correct
      @player.lives -= 1
    end
    
    return correct
  end
end
