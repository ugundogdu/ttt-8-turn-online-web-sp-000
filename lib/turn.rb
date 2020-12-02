def turn(board)
  puts "Please enter 1-9:"
end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def move(index, current_player = "X")
  @board[index] = current_player
end

def valid_move?(board, input)
  input.to_i.between?(1,9) && !position_taken?(board, input.to_i-1)
end

def input_to_index(user_input)
  user_input.to_i - 1
end
