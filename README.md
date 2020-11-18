![](https://img.shields.io/badge/Microverse-blueviolet)
![](https://img.shields.io/badge/TicTacToe-purple)
![](https://img.shields.io/badge/Ruby-red)

# TTY | TicTacYoe
A simple, terminal-based, Ruby implementation of the TicTacToe game.
Click [here](https://en.wikipedia.org/wiki/Tic-tac-toe) if you're new to the game.

## Built With

- ![](https://img.shields.io/badge/RubyOOP-red)


##  Getting Started

- Get the repository by either cloning it or downloading it as a zip file
- Open the `TicTacToe/bin` directory on your terminal
- Run it via `ruby main.rb` if you're on Windows or simply `./main.rb` if you're on a POSIX system.

## Rules of the game

- The game is played on a grid that's 3 squares by 3 squares
- One player is X and the other is O
- The first player to get 3 of either X or O marks in a row (up, down, across, or diagonally) is the winner
- When all 9 squares are full, the game is over either by draw or by a player winning.

## Implementation Details


The program will request name for both player X and player O and it will start asking for the player's move after that.
The board is represented by a two-dimensional array, a table in plain english. It will look something like this:

["-","-","-"]<br>
["-","-","-"]<br>
["-","-","-"]

Each "-" represents a board square. After the X player makes his first move, the board should look as follows depending on what move was selected:

["-","-","-"]<br>
["-","X","-"]<br>
["-","-","-"]

In order to select a move the player in turn has to enter a number from 1 to 9. These numbers represent the squares of the board going top to bottom left to right.
Once a game is completed the program will ask if the players want another game. You can play another game by either selecting Y (yes) or N (no).

## Authors

**Josias Alvarado**

- GitHub: [@pointerish](https://github.com/pointerish)
- Twitter: [@pointerish](https://twitter.com/pointerish)
- LinkedIn: [Josias Alvarado](https://www.linkedin.com/in/josias-alvarado-80901878/)

##  Contributing

Contributions and issues are welcome!

## Show your support

Give a ⭐️ if you like this project!

## License

This project is [MIT](./LICENSE) licensed.

## Acknowledgements

- [Microverse](https://microverse.org)
- [The Odin Project](https://www.theodinproject.com/)
