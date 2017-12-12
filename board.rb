require_relative 'piece.rb'
require_relative 'nullpiece.rb'
require 'byebug'

class Board

  attr_reader :board

  def initialize
    @board = Array.new(8) { Array.new(8)}
    make_starting_grid
  end

  def dup
    self.dup
  end

  def make_starting_grid
    (0..1).to_a.each do |row|
      (0..7).to_a.each do |col|
        @board[row][col] = Piece.new
      end
    end
    (6..7).to_a.each do |row|
      (0..7).to_a.each do |col|
        @board[row][col] = Piece.new
      end
    end

    (2..5).to_a.each do |row|
      (0..7).to_a.each do |col|
        @board[row][col] = NullPiece.new
      end
    end

  end

  def move_piece(start_pos, end_pos)
    if self[start_pos].is_a?(NullPiece)
      raise "THATS NO A PIECE!!!!"
    end

    if self[end_pos].is_a?(Piece)
      if valid_move? == false
        raise "NOT A MOVE!!!"
      end
    end
    self[start_pos], self[end_pos] = self[end_pos], self[start_pos]

  end

  def valid_move?
    true
  end

  def check_spot(pos)

  end

  def [](pos)
    row, col = pos
    @board[row][col]
  end

  def []=(pos, value)
    row, col = pos
    @board[row][col] = value
  end

end
