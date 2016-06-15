require "pry"

require "./board"
require "./human_player"
require "./computer_player"
require "./game"

class TicTacToe

  def initialize
    @x_wins = 0
    @o_wins = 0
  end

  def choose_players
    puts "\nWelcome to tic-tac-toe!"
    puts "How many human players (0, 1, 2)?"
    players = gets.chomp.to_i

    until(0..2).include?(players)
      puts "\nInvalid input."
      puts "Welcome to tic-tac-toe! How many human players (0, 1, 2)?"
      players = gets.chomp.to_i
    end

    case
    when players == 0
      @tic_tac_toe = Game.new(ComputerPlayer.new("X"), ComputerPlayer.new("O"), Board.new)
    when players == 1
      @tic_tac_toe = Game.new(HumanPlayer.new("X"), ComputerPlayer.new("O"), Board.new)
    when players == 2
      @tic_tac_toe = Game.new(HumanPlayer.new("X"), HumanPlayer.new("O"), Board.new)
    end
  end

  def play_again
    puts "Do you want to play again? 1: Yes  2: No"
    play_again = gets.chomp.to_i

    until(1..2).include?(play_again)
      puts "Invalid input."
      puts "Do you want to play again? 1: Yes  2: No"
      play_again = gets.chomp.to_i
    end

    if play_again == 1
      start_game
    else
      puts "\nWell fine then..I didn't want you to play again either :P"
      exit
    end
  end

  def start_game
    choose_players
    @tic_tac_toe.play
      if @tic_tac_toe.play == "X"
        @x_wins += 1
      else
        @o_wins += 1
      end
      puts "       SCOREBOARD"
      puts "======================="
      puts "       X: #{@x_wins}   O: #{@o_wins}"
      puts "=======================\n\n"
    play_again
  end
end
tic_tac_toe = TicTacToe.new
tic_tac_toe.start_game
