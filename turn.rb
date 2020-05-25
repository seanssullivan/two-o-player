class Turn
  def initialize(player)
    @player = player
    @question = Question.new
  end

  def question
    "#{@player}: #{@question.text}"
  end

  def guess(input)
    correct = @question.answer(input.to_i)

    unless correct
      @player.lives -= 1
    end
    response = correct ? "YES! You are correct." : "Seriously? No!"
    return "#{@player}: " + response
  end
end
