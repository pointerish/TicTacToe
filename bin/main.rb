#!/usr/bin/env ruby

def game_flow
  puts 'Tic Tac Toe Game Started!'
  puts 'Enter name for player X: '
  player_x = gets.chomp
  puts 'Enter name for player O: '
  player_o = gets.chomp
  9.times do |turn| # There are only 9 possible moves until draw
    player_turn = turn.even? ? "X" : "O"
    puts "Turn for player #{player_turn}-> Select where you want to move: "
    move_selection = gets.chomp
    puts 'Your move selection is valid!'
    # All the board manipulation and checks happen here
    puts "Your move selection was #{move_selection}."
    puts 'Showing board.'
    puts 'Your move is not winning... yet! But it\'s also not a draw.'
  end
end

game_flow
