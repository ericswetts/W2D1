

module SteppingPiece

  def knight_moves
      possible_changes = [ [2,1], [1,2], [-1,-2], [-2,-1], [-1, 2], [1,-2], [-2,1], [2,-1] ]
      opposing_color = self.color == :white ? :black : :white
      row, col = pos
      possible_moves = []
      possible_changes.each do |pair|
        row_delta, col_delta = pair
        new_row, new_col = (row_delta + row), (col_delta + col)
        if (0..7).include?(new_row) && (0..7).include?(new_col)
          if @board[row,col].is_a(NullPiece) || @board[new_row, new_col].color == opposing_color
            possible_moves << [new_row, new_col]
          end
        end
      end
      possible_moves
  end


end
