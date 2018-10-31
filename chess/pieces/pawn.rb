require_relative "../piece"

class Pawn < Piece

    def initialize(color, board, pos)
      super(color, board, pos)
      @symbol = "♟"
      @at_start_row = true
    end

    def move_dirs

    end

  private

    def at_start_row?
      @at_start_row
    end

    def forward_steps

    end

    def side_attacks

    end

    def moves
      multiplier = color == :black ? 1 : -1
      row, col = pos
      row += 1 * multiplier
      [-1, 0, 1].each do 
      piece = board[[ row, col ] ]



    end

end
