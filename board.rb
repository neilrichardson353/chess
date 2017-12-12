require_relative './pieces/piece'
require_relative './pieces/null_piece'
require 'byebug'

class Board
  def initialize
    @grid = Array.new(8) { Array.new(8) { NullPiece.new() } }
  end

end
