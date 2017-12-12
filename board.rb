require_relative './pieces/piece'
require_relative './pieces/null_piece'
require 'byebug'
attr_reader :grid
class Board
  def initialize
    @grid = Array.new(8) { Array.new(8) { NullPiece.new() } }
  end

  def move_piece(start_pos, end_pos)
    if @grid[start_pos] == NullPiece
      raise "There is no piece here!!"
    end
    if valid_move?(end_pos)
      raise "not valid!!!"
    end
    
  end

  def [](pos)
    row, col = pos
    @grid[row][col]
  end

  def []=(pos, val)
    row, col = pos
    @grid[row][col] = val
  end

  def valid_move?(end_pos)
    true
  end

end
