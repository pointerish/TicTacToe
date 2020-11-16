def game_flow
    puts "Tic Tac Toe Game Started!\n\n"
    print 'Enter name for player X: '
    player_x = gets.chomp
    print 'Enter name for player O: '
    player_o = gets.chomp
    puts "\n\nWelcome to TicTacToe, #{player_x} and #{player_o}!\n\n"
    9.times do |turn| # There are only 9 possible moves until draw
      player_turn = turn.even? ? 'X' : 'O'
      puts "\n\n\t\t\t\t|-|-|-|\n\t\t\t\t|-|-|-|\n\t\t\t\t|-|-|-|\n"
      print "\n\nTurn for #{player_turn}!"
      puts 'Choose your move by using the numbers from 1 to 9 meaning left to right cells in descending order: '
      move_selection = gets.chomp
      puts "\n\nYour move selection is valid!\n\n"
      # All the board manipulation and checks happen here
      puts "\n\nYour move selection was #{move_selection}."
      puts "\n\n\t\t\t\t|-|-|-|\n\t\t\t\t|-|-|-|\n\t\t\t\t|-|-|-|\n"
      puts "\n\nYour move is not winning... yet! But it\'s also not a draw."
    end
  end
  
game_flow