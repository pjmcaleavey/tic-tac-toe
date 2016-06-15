##Tic-Tac-Toe: Object-Oriented Design

This is a working version of tic-tac-toe. The goal of the game is to get three X's or O's in a row. You can win by playing up-and-down, side-to-side, or diagonal.

This program was made using object-oriented design.


###Classes

####TicTacToe

`choose_players` - allows you to choose how many players there will be. You can play against the computer, play against a friend, or have the computer play against itself.

`play_again` - once a game is concluded, it will ask you whether you want to play another game.

`start_game` - will get the game of tic-tac-toe started.

Outside the class, a TicTacToe object calls the start_game method to get the program running.


####Game

`greeting` - tells the player how to play tic-tac-toe.

`switch_player` - once a player takes their turn, this changes players from player 1 (X) to player 2 (O).

`play` - plays tic-tac-toe. Methods from this and other classes are called to create a functional game.


####Board

`display_board` - creates a tic_tac_toe board and displays it with 9 options for the players to select from.

`update_board` - after a player selects a space for their move, this checks to see if that space is open. If it is already taken, they are asked to select an open spot. If it is open, the X or O is placed in the correct space.

`legal_moves` - this checks to see what spaces on the board are available for a player to select.

`win?` - checks to see if a player has 3 in a row anywhere on the board, and returns a boolean.

`draw?` - checks to see if every space has been chosen, and returns a boolean.

`game_over?` - checks to see if a player has won or if there has been a draw. This returns a boolean.

`game_over_message` - this lets the player X or O know if they won, or tells them there has been a draw.



####Run the program

```bash
ruby tic_tac_toe.rb
```

Tic-Tac-Toe is a childhood favorite of mine. Enjoy looking at my code, but please remember to play the game and **have fun!**
