# prototyping whether a given board is game over or not

empty_board = {
  7 => " ", 8 => " ", 9 => " ",
  4 => " ", 5 => " ", 6 => " ",
  1 => " ", 2 => " ", 3 => " "
}
#
# board = empty_board
board = {
  7 => "X", 8 => "X", 9 => " ",
  4 => "O", 5 => "X", 6 => "O",
  1 => "O", 2 => "X", 3 => "X"
}

def three_in_a_row(a, b, c)
  if a == b && a == c && a != " " # if all X's or O's but not blank move
    puts "#{a} wins!"
    a # return the move, which is a truthy value
  else
    false
  end
end

def victory(board)
  if three_in_a_row(board[7], board[8], board[9]) ||
  three_in_a_row(board[4], board[5], board[6]) ||
  three_in_a_row(board[1], board[2], board[3]) ||
  three_in_a_row(board[7], board[4], board[1]) ||
  three_in_a_row(board[8], board[5], board[2]) ||
  three_in_a_row(board[9], board[6], board[3]) ||
  three_in_a_row(board[7], board[5], board[3]) ||
  three_in_a_row(board[9], board[5], board[1])
    true
  else
    false
  end
end

def full_board(board)
  full = true
  board.each_value do |value|
    full = (value != " ") #check if value is " "
    if !full
      return false
    end
  end
  full # returns true if it reaches here
end

def tie(board)
  if full_board(board) && !victory(board)
    puts "Tie game!"
    return true
  else
    return false
  end
end

# p full_board(board)
