module Players
  
  class Computer < Player
    
    def move(board)
    #   # return minmax(game, aiToken).index
    #   huToken = nil
    #   aiToken = nil
    #   condition = nil
      
    #   if self.token == "X"
    #     aiToken = "X"
    #     huToken = "O"
    #   elsif self.token == "O"
    #     aiToken = "O"
    #     huToken = "X"
    #   end
      

       move = nil 
       move = "1"
      
    #   if board.turn_count == 0
    #     move = 2 * rand(1..4) + 1
    #     move.to_s
    #   end
    # #If opponent plays first move in top left corner
    #   if board.turn_count == 1 && board.taken?(1)
    #     move = "5"
    #   #if second opponent's move is in a corner, put your second move in an edge
    #   elsif board.turn_count == 3 && board.position(1) == huToken && board.position(5) == aiToken && board.position(3) == huToken
    #     move = "2"
    #   elsif board.turn_count == 3 && board.position(1) == huToken && board.position(5) == aiToken && board.position(7) == huToken
    #     move = "4"
    #   elsif board.turn_count == 3 && board.position(1) == huToken && board.position(5) == aiToken && board.position(9) == huToken
    #     move = "6"
    #   #if second opponent's move is in an edge, put your second move in the corner that blocks both O's
    #   elsif board.turn_count == 3 && board.position(1) == huToken && board.position(5) == aiToken && board.position(4) == huToken
    #     move = "7"
    #   elsif board.turn_count == 3 && board.position(1) == huToken && board.position(5) == aiToken && board.position(2) == huToken
    #     move = "3"
    # #If opponent plays first move in top right corner
    #   elsif board.turn_count == 1 && board.taken?(3)
    #     move = "5"
    #   #if second opponent's move is in a corner, put your second move in an edge
    #   elsif board.turn_count == 3 && board.position(3) == huToken && board.position(5) == aiToken && board.position(1) == huToken
    #     move = "2"
    #   elsif board.turn_count == 3 && board.position(3) == huToken && board.position(5) == aiToken && board.position(7) == huToken
    #     move = "4"
    #   elsif board.turn_count == 3 && board.position(3) == huToken && board.position(5) == aiToken && board.position(9) == huToken
    #     move = "6"
    #   #if second opponent's move is in an edge put your second move in the corner that block both O's
    
    # #If opponent plays first move in bottom left corner
    #   elsif board.turn_count == 1 && board.taken?(7)
    #     move = "5"
    #   elsif board.turn_count == 1 && board.taken?(9)
    #     move = "5"
    #   elsif board.turn_count == 1 && board.taken?(2) && !board.taken?(1)
    #     move = "1"
    #   elsif board.turn_count == 1 && board.taken?(2) && !board.taken?(3)
    #     move = "3"
    #   elsif board.turn_count == 1 && board.taken?(4) && !board.taken?(1)
    #     move = "1"
    #   elsif board.turn_count == 1 && board.taken?(4) && !board.taken?(7)
    #     move = "7"
    #   elsif board.turn_count == 1 && board.taken?(6) && !board.taken?(3)
    #     move = "3"
    #   elsif board.turn_count == 1 && board.taken?(6) && !board.taken?(9)
    #     move = "9"
    #   elsif board.turn_count == 1 && board.taken?(8) && !board.taken?(7)
    #     move = "7"
    #   elsif board.turn_count == 1 && board.taken?(8) && !board.taken?(9)
    #     move = "9"
    #   elsif board.turn_count == 1 && board.taken?(5)
    #     move = "1"
    # #If you play first
    #   elsif board.turn_count == 2 && board.position(1) == aiToken && board.position(2) == huToken
    #     move = "5"
    #     condition = 1
    #   elsif board.turn_count == 2 && board.position(1) == aiToken && board.position(4) == huToken
    #     move = "5"
    #     condition = 1
    #   elsif board.turn_count == 2 && board.position(1) == aiToken && board.position(6) == huToken
    #     move = "5"
    #     condiition = 1
    #   elsif board.turn_count == 2 && board.position(1) == aiToken && board.position(8) == huToken
    #     move = "5"
    #     condiition = 1
    #   elsif board.turn_count == 2 && board.position(3) == aiToken && board.position(2) == huToken
    #     move = "5"
    #     condiition = 1
    #   elsif board.turn_count == 2 && board.position(3) == aiToken && board.position(4) == huToken
    #     move = "5"
    #     condiition = 1
    #   elsif board.turn_count == 2 && board.position(3) == aiToken && board.position(6) == huToken
    #     move = "5"
    #     condiition = 1
    #   elsif board.turn_count == 2 && board.position(3) == aiToken && board.position(8) == huToken
    #     move = "5"
    #     condiition = 1
    #   elsif board.turn_count == 2 && board.position(7) == aiToken && board.position(2) == huToken
    #     move = "5"
    #     condiition = 1
    #   elsif board.turn_count == 2 && board.position(7) == aiToken && board.position(4) == huToken
    #     move = "5"
    #     condiition = 1
    #   elsif board.turn_count == 2 && board.position(7) == aiToken && board.position(6) == huToken
    #     move = "5"
    #     condiition = 1
    #   elsif board.turn_count == 2 && board.position(7) == aiToken && board.position(8) == huToken
    #     move = "5"
    #     condiition = 1
    #   elsif board.turn_count == 2 && board.position(9) == aiToken && board.position(2) == huToken
    #     move = "5"
    #     condiition = 1
    #   elsif board.turn_count == 2 && board.position(9) == aiToken && board.position(4) == huToken
    #     move = "5"
    #     condiition = 1
    #   elsif board.turn_count == 2 && board.position(9) == aiToken && board.position(6) == huToken
    #     move = "5"
    #     condiition = 1
    #   elsif board.turn_count == 2 && board.position(9) == aiToken && board.position(8) == huToken
    #     move = "5"
    #     condiition = 1
    #   elsif board.turn_count == 2 && board.position(1) == aiToken && board.position(3) == huToken
    #     move = "7"
    #     condition = 2
    #   elsif board.turn_count == 2 && board.position(1) == aiToken && board.position(7) == huToken
    #     move = "9"
    #     condition = 2
    #   elsif board.turn_count == 2 && board.position(1) == aiToken && board.position(9) == huToken
    #     move = "7"
    #     condition = 2
    #   elsif board.turn_count == 2 && board.position(3) == aiToken && board.position(1) == huToken
    #     move = "7"
    #     condition = 2
    #   elsif board.turn_count == 2 && board.position(3) == aiToken && board.position(7) == huToken
    #     move = "9"
    #     condition = 2
    #   elsif board.turn_count == 2 && board.position(3) == aiToken && board.position(9) == huToken
    #     move = "7"
    #     condition = 2
    #   elsif board.turn_count == 2 && board.position(7) == aiToken && board.position(1) == huToken
    #     move = "3"
    #     condition = 2
    #   elsif board.turn_count == 2 && board.position(7) == aiToken && board.position(3) == huToken
    #     move = "1"
    #     condition = 2
    #   elsif board.turn_count == 2 && board.position(7) == aiToken && board.position(9) == huToken
    #     move = "1"
    #     condition = 2
    #   elsif board.turn_count == 2 && board.position(9) == aiToken && board.position(1) == huToken
    #     move = "7"
    #     condition = 2
    #   elsif board.turn_count == 2 && board.position(9) == aiToken && board.position(3) == huToken
    #     move = "7"
    #     condition = 2
    #   elsif board.turn_count == 2 && board.position(9) == aiToken && board.position(7) == huToken
    #     move = "1"
    #     condition = 2
    #   elsif board.turn_count == 2 && board.position(1) == aiToken && board.position(5) == huToken
    #     move = "9"
    #     condition = 3
    #   elsif board.turn_count == 2 && board.position(3) == aiToken && board.position(5) == huToken
    #     move = "7"
    #     condition = 3
    #   elsif board.turn_count == 2 && board.position(7) == aiToken && board.position(5) == huToken
    #     move = "3"
    #     condition = 3
    #   elsif board.turn_count == 2 && board.position(9) == aiToken && board.position(5) == huToken
    #     move = "1"
    #     condition = 3
    #   elsif board.turn_count == 2 && board.position(5) == aiToken && board.position(2) == huToken
    #     move = "1"
    #     condition = 4
    #   elsif board.turn_count == 2 && board.position(5) == aiToken && board.position(4) == huToken
    #     move = "1"
    #     condition = 4
    #   elsif board.turn_count == 2 && board.position(5) == aiToken && board.position(6) == huToken
    #     move = "1"
    #     condition = 4
    #   elsif board.turn_count == 2 && board.position(5) == aiToken && board.position(8) == huToken
    #     move = "1"
    #     condition = 4
    #   elsif board.turn_count == 2 && board.position(5) == aiToken && board.position(1) == huToken
    #     move = pnrg.rand(1..9) if !board.taken?(move)
    #     condition = 5
    #   elsif board.turn_count == 2 && board.position(5) == aiToken && board.position(3) == huToken
    #     move = pnrg.rand(1..9) if !board.taken?(move)
    #     condition = 5
    #   elsif board.turn_count == 2 && board.position(5) == aiToken && board.position(7) == huToken
    #     move = pnrg.rand(1..9) if !board.taken?(move)
    #     condition = 5
    #   elsif board.turn_count == 2 && board.position(5) == aiToken && board.position(9) == huToken
    #     move = pnrg.rand(1..9) if !board.taken?(move)
    #     condition = 5
    #   end
    #   move.to_s
    # end
    
    
    
    # def score(board)
    #   score = 0
    #   huToken = nil
    #   aiToken = nil
      
    #   if self.token == "X"
    #     aiToken = "X"
    #     huToken = "O"
    #   elsif self.token == "O"
    #     aiToken = "O"
    #     huToken = "X"
    #   end
      
    #   WIN_COMBINATIONS.each do |win_combination|
    #   if !win_combination.include?(huToken) && win_combination.include?(aiToken)
    #     score += 10
    #   elsif win_combination.include?(huToken) && !win_combination.include?(aiToken) 
    #     score -= 10
    #   end
    # end
    
    
  
    # def score(game, depth)
    #   game_index = game.won?
    #   if self.token == "X"
    #     aiToken = "X"
    #     huToken = "O"
    #   elsif self.token == "O"
    #     aiToken = "O"
    #     huToken = "X"
    #   end
    #   if game_index.index == aiToken
    #     return 10 - depth
    #   elsif game_index.index == huToken
    #     return depth - 10
    #   else
    #     return 0
    #   end
    # end
    
    # def minimax(game, depth)
    #   return score(game) if game.over?
    #   depth += 1
    #   scores = []
    #   moves = []
    #   game.board.potential_moves.each do |move|
    #     possible_game = game.board.get_new_state
    # end
    
  end
end
      