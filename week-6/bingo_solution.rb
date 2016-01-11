# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent [#] hours on this challenge.


# Release 0: Pseudocode
# Outline:

# Create a method to generate a letter ( b, i, n, g, o) and a number (1-100)
  # Within the method create an empty hash
  # Within the method create an array of the bingo letters
  # Set the hash at symbol random index of bingo array to random number 1-100

# Check the called column for the number called.
  #Create a case that when the generated number is B search in the
  # => first position of the aray, I, second position, etc. and check
  # => for a matching number
  # => if there is a match, replace the value with an 'x'

# Display a column to the console
  #Display the position in the array (the column) based on the letter desired

# Display the board to the console (prettily)
  #Iterate over each array and array within array to print like a
  # => standard bingo board would

# Initial Solution

class BingoBoard

  def initialize(board)
    @board = board
  end

  def call
    @letter_number = {}
    @letters = ['B','I','N','G','O']
    @letter_number[@letters[rand(0..(@letters.length - 1))]] = rand(1..100)
    p @letter_number
  end
  
  def check

    if @letter_number.has_key?('B')
      
      @board[0].map!{|element|
        if @letter_number['B'] == element
        element = 'x'
        else
        element
        end}
    
    elsif @letter_number.has_key?('I')
      
      @board[1].map! {|element|
        if @letter_number['I'] == element
        element = 'x'
        else
        element
        end}
    
    elsif @letter_number.has_key?('N')
      
      @board[2].map! {|element|
        if @letter_number['N'] == element
        element = 'x'
        else
        element
        end}

    elsif @letter_number.has_key?('G')
      
      @board[3].map! {|element|
        if @letter_number['G'] == element
        element = 'x'
        else
        element
        end}

    elsif @letter_number.has_key?('O')
      
      @board[4].map! {|element|
        if @letter_number['O'] == element
        element = 'x'
        else
        element
        end}

    end
    p @board

  end

  def column(letter)
    case letter
      when 'B'
        p @board[0]
      when 'I'
        p @board[1]
      when 'N'
        p @board[2]
      when 'G'
        p @board[3]
      when 'O'
        p @board[4]
      else
        p "You need to input B, I, N, G, or O"
    end
  end
      
  def pretty
    print "  "
    @letters.each{|element|
      print element + "    "
    }
    print "\n- "
    @board.each{|element|
      print "#{element[0]}" + " - "
    }
    print "\n- "
    @board.each{|element|
      print "#{element[1]}" + " - "
    }
    print "\n- "
    @board.each{|element|
      print "#{element[2]}" + " - "
    }
    print "\n- "
    @board.each{|element|
      print "#{element[3]}" + " - "
    }
    print "\n- "
    @board.each{|element|
      print "#{element[4]}" + " - "
    }
  end

end

# Refactored Solution



#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE
board = [[47, 44, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]]

new_game = BingoBoard.new(board)
new_game.call
new_game.check
new_game.column("B")
new_game.pretty


#Reflection
