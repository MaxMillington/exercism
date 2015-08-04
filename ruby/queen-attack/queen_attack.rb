class Queens

  attr_reader :white, :black

  def initialize(positions = {})
    @white = positions.fetch(:white) { [0,3] }
    @black = positions.fetch(:black) { [7,3] }
    raise ArgumentError if white == black
  end

  def to_s
    chess_board = []
    (0..7).each do |row|
      positions = []
      (0..7).each do |column|
        positions << sketch(row, column)
      end
      chess_board[row] = positions.join(' ')
    end
    chess_board.join("\n")
  end

  def sketch(row, column)
    case [row, column]
      when white then 'W'
      when black then 'B'
      else
        '_'
    end
  end

  def attack?
    if white.first == black.first
      true
    elsif white.last == black.last
      true
    elsif white_difference.abs == black_difference.abs
     true
    else
      false
    end
  end

  def white_difference
    white.last - white.first
  end

  def black_difference
    black.last - black.first
  end

end