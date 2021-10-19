# prototyping board printing and hash behavior with symbols and user input
# conclusion: hard to use symbols as keys with integer input

board = {
  7 => " ", 8 => " ", 9 => " ",
  4 => " ", 5 => " ", 6 => " ",
  1 => " ", 2 => " ", 3 => " "
}

# puts "Enter move (keypad integer 1-9)"
# move = gets.chomp.to_i

def print_board(board)
  puts "#{board[7]}|#{board[8]}|#{board[9]}"
  print_row_line
  puts "#{board[4]}|#{board[5]}|#{board[6]}"
  print_row_line
  puts "#{board[1]}|#{board[2]}|#{board[3]}"
end

def print_row_line
  puts "-+-+-"
end

print_board(board)
