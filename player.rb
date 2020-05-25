class Player
  attr_accessor(:number, :lives)

  def initialize(n)
    self.number = n
    self.lives = 3
  end

  def to_s
    "Player #{number}"
  end
end
