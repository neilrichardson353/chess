require 'colorize'
require_relative 'board.rb'
require_relative 'cursor.rb'
require 'byebug'
#@cursor_pos.red
class Display

attr_reader :board, :cursor_pos, :cursor

  def initialize(board)
    @board = board
    @cursor = Cursor.new([0,0], board) #  ?? @board
    @cursor_pos = cursor.cursor_pos
  end

def render
  p @cursor_pos
  board.grid.each_with_index do |row, idx1|
    row.each_with_index do |col, idx2|
      piece = board[[idx1, idx2]]
      if [idx1, idx2] == cursor_pos
         print piece.symbol.red + " "
      else
        print piece.symbol + " "
      end
    end
    puts
  end
end


end

if __FILE__ == $PROGRAM_NAME

  board = Board.new
  display = Display.new(board)
  while true
    display.render
    display.cursor.get_input
  end
end
