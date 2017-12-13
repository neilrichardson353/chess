require_relative './pieces/piece'
require_relative './pieces/null_piece'
require 'byebug'

class Board

  attr_reader :grid

  def initialize
    @grid = Array.new(8) { Array.new(8) { NullPiece.instance } }

  end

  def move_piece(start_pos, end_pos)

    if self[start_pos].is_a?(NullPiece)
      raise "There is no piece here!!"
    end

    # if !self[start_pos].valid_move?(end_pos)
    #   raise "not valid!!!"
    # end

    self[end_pos] = self[start_pos]
    self[start_pos] = NullPiece.instance
  end

  def [](pos)
    row, col = pos
    @grid[row][col]
  end

  def []=(pos, val)
    row, col = pos
    @grid[row][col] = val
  end

end
