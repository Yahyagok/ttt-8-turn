# ask for input 
# get input 
# convert input to index 
# if indexis valid 
# make the move for index
# show the board
# else ask for input again until you get a valid input end 

def display_board(board)
     puts " #{board[0]} ""|"" #{board[1]} ""|"" #{board[2]} "
     puts "-----------"
     puts " #{board[3]} ""|"" #{board[4]} ""|"" #{board[5]} "
     puts "-----------"
     puts " #{board[6]} ""|"" #{board[7]} ""|"" #{board[8]} "
end 

def input_to_index(user_input)
     convert = user_input.to_i 
     sub = convert - 1
end  

def valid_move?(board,index)

          if !position_taken?(board, index) && index.between?(0,8)
              return true
          end
      end     
      # code your #valid_move? method here
      def position_taken?(board, index)
          if board[index] == " "  or   board[index] == ""
              return false    
          elsif board[index] == "X" or board[index] == "O"
              return true
          end
       
     # this below way works to but I liked the above method better using helper method look bettter 
     # while index.between?(0,8)
     #      if  (board[index] == 'X') 
     #           return false
     #      elsif board[index] == 'O'
     #           return false
     #      else
     #           return true
     #      end 
     # end 
end 

def move(board,user_index, value)

     board[user_index] = value
end 

def turn(board)
     puts "Please enter 1-9:"
     input = gets.chomp
    sub_index = input_to_index(input) 
    if  valid_move?(board, sub_index) 
          move(board, sub_index, value='X')
          display_board(board)
    else 
     display_board(board)
     turn(board)
    end 
end 

















