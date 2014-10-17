# Ellery Temple Jr.
# 10/16/14
# Paper - Rock - Scissors Game

# Possible choices for player to choose from

require 'pry'

CHOICES = {'p' => 'Paper', 'r' => 'Rock', 's' => 'Scissors'}

def valid_choice?(choice)

  CHOICES.include?(choice) ? true : false 
end

def computers_move
  # Randomly generate 
  CHOICES.keys.sample
end

def players_move

  loop do
    puts "Choose one: (P/R/S)"
    
    choice = gets.chomp.downcase #string

    if valid_choice?(choice)  
      return choice # breaks out of method
    else
      puts "Invalid selection, please try again!"
    end
  end
end

def compare_moves(player, computer)
  
  puts "You picked #{CHOICES[player]} and computer picked #{CHOICES[computer]}"

  winner =  
    case 
    when player == 'p' && computer == 'r'
      "You won! Paper beats rock!"
    when player == 'p' && computer == 's'
      "You lose! Scissors cuts paper!"
    when player == 'r' && computer == 's'
      "You won! Rock crushes scissors!"
    when player == 'r' && computer == 'p'
      "You lose! Paper covers rock!"
    when player == 's' && computer == 'p'
      "You won! Scissors cuts paper!"
    when player == 's' && computer == 'r'
      "You lose! Rock crushes scissors!"
    else
      "There's a tie!"
    end
end

def play_game

  loop do
    puts "Play Paper Rock Scissors!"

    puts result = compare_moves(players_move, computers_move) 

    puts "Would you like to play again? (Y/N)"
    play_again = gets.chomp.downcase

    break if play_again == 'n'
  end
end

play_game

