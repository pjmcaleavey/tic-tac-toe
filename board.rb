require "pry"

WINS = [[1,2,3],
        [4,5,6],
        [7,8,9],
        [1,4,7],
        [2,5,8],
        [3,6,9],
        [1,5,9],
        [3,5,7]]

class Board
  def initialize
    @spaces = (1..9).to_a
  end

  def display_board
    puts "       #{@spaces[0]} | #{@spaces[1]} | #{@spaces[2]}
       #{@spaces[3]} | #{@spaces[4]} | #{@spaces[5]}
       #{@spaces[6]} | #{@spaces[7]} | #{@spaces[8]}"
    puts "\n\n\n\n"
  end

  def update_board(move, letter)
    while @spaces[move - 1] == "X" || @spaces[move - 1] == "O"
       puts "Sorry #{letter}, that space is taken. Pick again:"
       move = gets.chomp.to_i
    end
    @spaces[move - 1] = letter
  end

  def legal_moves
    available_spaces = []
    @spaces.map do |spot|
      if spot.is_a?(Fixnum)
        available_spaces = spot
      end
    end
  end

  def win?
    WINS.any? do |x, y, z|
      @spaces[x - 1] == @spaces[y - 1] && @spaces[y - 1] == @spaces[z - 1]
    end
  end

  def draw?
     @spaces.all? {|space| space.is_a?(String)}
  end

  def game_over?
    win? || draw?
  end

  def game_over_message(letter)
    if win?
      puts "\n\nGreat success! #{letter} is the champion of tic-tac-toe!\n\n"
    elsif
      draw?
      puts "\n\nNot so great X and O. Hang your heads in shame..\n\n"
    else
      puts "Pat messed up this program!"
    end
  end
end
