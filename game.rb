require "pry"

class Game

  def initialize(player1, player2, board)
    @player1 = player1
    @player2 = player2
    @board = board
    @current_player = @player1
    @available_spaces = []
  end

  def greeting
    puts "\nPlayer 1 is 'X' and Player 2 is 'O'"
    puts "\nPick an open space on the board (1-9) to play 'X' or 'O'.\n\n"
  end

  def switch_player
    if @current_player == @player1
      @current_player = @player2
    else
      @current_player = @player1
    end
  end

  def play
    greeting
    @board.display_board
    until @board.game_over?
      @available_spaces = @board.legal_moves
      move = @current_player.pick(@available_spaces.compact)##compact removes all nil elements
      @board.update_board(move, @current_player.letter)
      @board.display_board
      switch_player unless @board.game_over?
    end
    @board.game_over_message(@current_player.letter)
    if @board.win?
    return @current_player.letter
    end
  end
end
