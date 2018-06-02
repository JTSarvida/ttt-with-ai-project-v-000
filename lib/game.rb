class Game 
  
  attr_accessor :board, :player_1, :player_2
  
  WIN_COMBINATIONS = [
    [0,1,2],
    [3,4,5],
    [6,7,8],
    [0,3,6],
    [1,4,7],
    [2,5,8],
    [0,4,8],
    [2,4,6]
  ]
  
  def initialize(player_1 = Players::Human.new("X"), player_2 = Players::Human.new("O"), board = Board.new)
    @board = board
    @player_1 = player_1
    @player_2 = player_2
  end
  
  def current_player
    if @board.turn_count % 2 == 0
      player_1
    else
      player_2
    end
  end
  
  def won?
    WIN_COMBINATIONS.each do |win_combination|
      if win_combination.all? { |combo| @board.cells[combo] == "X" }
        return win_combination
      elsif win_combination.all? { |combo| @board.cells[combo] == "O" }
        return win_combination
      end
    end
    false
  end
  
  def draw?
    if @board.full? && !won?
      true 
    else
      false
    end
  end
  
  def over?
    if draw? || won?
      true 
    else
      false
    end
  end
  
  def winner
    if won? != false
      @board.cells[won?[0]]
    end
  end 
    
  def turn 
    current_move = current_player.move(@board)
    if @board.valid_move?(current_move)
      puts " "
      @board.update(current_move, current_player)
      puts " "
      @board.display
    else
      turn
    end
  end
  
  def play 
    while !over?
      turn
    end
    if won?
      puts "Congratulations #{winner}!"
    elsif draw?
      puts "Cat's Game!"
    end
  end
  
  
  def self.start 
    
    puts "Hello! Would you like to play Tic Tac Toe!"
    
    puts "How many players are playing today?"
    
    number_of_players = gets.strip
    
    puts "Who should go first?"
    
    first_player = gets.strip 
    
    if number_of_players.to_i == 0 && first_player.downcase == "computer"
      game = Game.new(Players::Computer.new("X"), Players::Computer.new("O"), board = Board.new)
      until game.over?
        game.play
      end
    end
    
    if number_of_players.to_i == 1 && first_player.downcase == "me"
      game = Game.new(huPlayer = Players::Human.new("X"), aiPlayer = Players::Computer.new("O"), board = Board.new)
      until game.over?
        game.play
      end
      puts "Another game?"
      another_game = gets.strip
      until another_game.downcase == "n" || another_game.downcase == "no"
        another_game = gets.strip
        if another_game.downcase == "y" || another_game.downcase == "yes"
          game.start
        end
      end
    end
    
    if number_of_players.to_i == 1 && first_player.downcase == "computer"
      game = Game.new(aiPlayer = Players::Computer.new("X"), huPlayer = Players::Human.new("O"), board = Board.new)
      until game.over?
        game.play
      end
      puts "Another game?"
      another_game = gets.strip
      until another_game.downcase == "n" || another_game.downcase == "no"
        another_game = gets.strip
        if another_game.downcase == "y" || another_game.downcase == "yes"
          game.start
        end
      end
    end
    
    if number_of_players.to_i == 2 && first_player.downcase == "me"
      game = Game.new(Players::Human.new("X"), Players::Human.new("O"))
      until game.over?
        game.play
      end
      puts "Another game?"
      another_game = gets.strip
      until another_game.downcase == "n" || another_game.downcase == "no"
        another_game = gets.strip
        if another_game.downcase == "y" || another_game.downcase == "yes"
          game.start
        end
      end
    end
    
    if number_of_players.to_i == 2 && first_player.downcase == "you"
      game = Game.new(Players::Human.new("X"), Players::Human.new("O"))
      until game.over?
        game.play
      end
      puts "Another game?"
      until another_game.downcase == "n" || another_game.downcase == "no"
        another_game = gets.strip
        if another_game.downcase == "y" || another_game.downcase == "yes"
          game.start
        end
      end
    end
  end 
end