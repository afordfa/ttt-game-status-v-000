# Helper Method
def position_taken?(board, location)
  !(board[location].nil? || board[location] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0, 1, 2],  #Top row
  [3, 4, 5],  #Middle row
  [6, 7, 8],  #Bottom row
  [0, 3, 6],  #Left column
  [1, 4, 7],  #Middle column
  [2, 5, 8],  #Right column
  [0, 4, 8],  #First diagonal
  [2, 4, 6]   #Second diagonal
  ]


def won?(board)
  WIN_COMBINATIONS.each do |win_combination|
    win_index_1 = win_combination[0]
    win_index_2 = win_combination[1]
    win_index_3 = win_combination[2]

    position_1 = board[win_index_1]  #load the value of the board at win_index_1
    position_2 = board[win_index_2]  #load the value of the board at win_index_2
    position_3 = board[win_index_3]  #load the value of the board at win_index_3

    if position_1 == "X" && position_2 == "X" && position_3 == "X"
      return win_combination    #return the win_combination indexes that won
    elsif position_1 == "O" && position_2 == "O" && position_3 == "O"
      return win_combination    #return the win_combination indexes that won
    else false
    end
  end
  return false
end



def full?(board)
  board.all?{|p| p == "X" || p == "O"}
end


def draw?(board)
  if won?(board)
    false
  elsif full?(board)
    true
  else
    false
  end
end


def over?(board)
  if draw?(board) || won?(board) || full?(board)
    true
  else
    false
  end
end



def winner(board)
  if won?(board) == false
    nil
  else
    winner = won?(board)[1]
    winner = board[winner]
   end
end


