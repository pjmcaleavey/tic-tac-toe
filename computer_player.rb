require "pry"

class ComputerPlayer

  def initialize(letter)
    @letter = letter
    @available_spaces = []
  end

  def letter
    @letter
  end

  def pick(legal_moves)
    puts "The computer is contemplating its move.."
    sleep 1
    puts "\n\nThe computer has made its move:\n\n"
    legal_moves.sample
  end
end
