class Board
  
  attr_accessor :cells
  
  def initialize()
    @cells = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
  end
  
  def reset!
    @cells.clear
    @cells = [" ", " ", " ", " ", " ", " ", " ", " ", " "] 
  end
  
  def display
    puts " #{@cells[0]} | #{@cells[1]} | #{@cells[2]} "
    puts "-----------"
    puts " #{@cells[3]} | #{@cells[4]} | #{@cells[5]} "
    puts "-----------"
    puts " #{@cells[6]} | #{@cells[7]} | #{@cells[8]} "
  end
  
  def position(input)
    @cells[input.to_i-1]
  end
  
  def full?
    if @cells.include?(" ")
      false
    else
      true
    end
  end 
  
  def turn_count
    @cells.count{|character| character == "X" || character == "O"}
  end
  
  def taken?(input)
    if @cells[input.to_i-1] == " "
      false 
    else 
      true 
    end
  end
  
  def valid_move?(input)
    if !taken?(input.to_i) && input.to_i.between?(1, 9)
      true
    else
      false
    end
  end
  
  def update(move, player)
    @cells[move.to_i - 1] = player.token
  end
  
  def potential_moves
    @cells.select {|spots| spots == " "}
  end
end