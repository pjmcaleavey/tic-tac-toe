require "pry"

class HumanPlayer

    def initialize(letter)
      @letter = letter
    end

    def letter
      @letter
    end

    def pick(legal_moves)
      puts "#{@letter}, pick an open spot:"
      move = gets.chomp.to_i

      until (1..9).include?(move)
        puts "Invalid input. Pick an available spot"
        move = gets.chomp.to_i
      end
      move
    end
end
