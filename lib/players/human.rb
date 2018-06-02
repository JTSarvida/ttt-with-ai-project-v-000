module Players
  class Human < Player
    
    def move(board)
      puts "Hello! What's you're move?"
      player_move = gets.strip
      player_move
    end
    
  end
end 