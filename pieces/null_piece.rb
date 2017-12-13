require_relative 'piece'
require "singleton"

class NullPiece < Piece
  include Singleton

  def symbol
    "x"
  end

end
