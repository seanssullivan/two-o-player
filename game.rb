class Game
  NEW_TURN = "----- NEW TURN -----"
  GAME_OVER = "----- GAME OVER -----"

  def initialize
    @player1 = Player.new(1)
    @player2 = Player.new(2)
    @current_player = @player1
  end

  def play
    while @player1.lives > 0 && @player2.lives > 0 do
      player = @current_player
      turn = Turn.new(player)
      puts NEW_TURN
      puts turn.question
      puts turn.guess(gets.chomp)
      puts "#{score}"
      @current_player = @current_player == @player1 ? @player2 : @player1
    end

    puts "#{winner}"
    puts GAME_OVER
  end

  private

  def score
    "P1: #{@player1.lives}/3 vs P2: #{@player2.lives}/3"
  end

  def winner
    unless @player1.lives == 0
      player = @player1
    else
      player = @player2
    end
    
    "#{player} wins with a score of #{player.lives}/3"
  end
end
