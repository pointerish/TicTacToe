#!/usr/bin/env ruby

def game_flow
  puts 'Tic Tac Toe Game Started!'
  9.times do |turn| # There are only 9 possible moves until draw
    puts "Turn #{turn}-> Select where you want to move: "
    move_selection = gets.chomp
    # All the board manipulation and checks happen here
    puts "Your move selection was #{move_selection}."
    puts 'Showing board.'
  end
end

game_flow
