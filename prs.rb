# Ellery Temple Jr.
# 10/16/14
# Paper - Rock - Scissors Game

# Possible choices for player to choose from

CHOICES = {'p' => 'Paper', 'r' => 'Rock', 's' => 'Scissors'}

def verify_choice(choice)

  if CHOICES.include?(choice)
    true # valid
  else
    false # invalid 
  end
end

def cmptrs_move
  # Randomly generate 
  CHOICES.keys[rand(0..2)]
end

def plyrs_move

  loop do
    puts "Choose one: (P/R/S)"
    
    choice = gets.chomp.downcase #string

    if verify_choice(choice) == true
      return choice # breaks out of method
    else
      puts "Invalid selection, please try again!"
    end
  end
end

def compare_moves(plyr, cmptr)

  puts "You picked #{CHOICES[plyr]} and computer picked #{CHOICES[cmptr]}"

  winner =  
    case 
    when plyr == 'p' && cmptr == 'r'
      "You won! Paper beats rock!"
    when plyr == 'p' && cmptr == 's'
      "You lose! Scissors cuts paper!"
    when plyr == 'r' && cmptr == 's'
      "You won! Rock crushes scissors!"
    when plyr == 'r' && cmptr == 'p'
      "You lose! Paper covers rock!"
    when plyr == 's' && cmptr == 'p'
      "You won! Scissors cuts paper!"
    when plyr == 's' && cmptr == 'r'
      "You lose! Rock crushes scissors!"
    else
      "There's a tie!"
    end
end

def play_game

  loop do
    puts "Play Paper Rock Scissors!"

    puts result = compare_moves(plyrs_move, cmptrs_move) 

    puts "Would you like to play again? (Y/N)"
    play_again = gets.chomp.downcase

    break if play_again == 'n'
  end
end

play_game

