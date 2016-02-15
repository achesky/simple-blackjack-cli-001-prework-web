def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  card = rand(1..11)
end

def display_card_total(card)
  # code #display_card_total here
  puts "Your cards add up to #{card}"
end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  # code #get_user_input here
  play = gets.chomp
end

def end_game(card)
  # code #end_game here
  puts "Sorry, you hit #{card}. Thanks for playing!"
end

def initial_round
  # code #initial_round here
  c1 = deal_card
  c2 = deal_card
  initial_sum = c1 + c2
  display_card_total(initial_sum)
  return initial_sum
end

def hit?(initial_round)
  # code hit? here
 prompt_user
 draw = get_user_input
 if draw == "h"
  initial_round += deal_card
  return initial_round
elsif draw == "s"
    return(initial_round)
end
end

def invalid_command
  # code invalid_command here
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
  welcome
  initial_round
  until initial_round > 21
    prompt_user
  end
  end_game
end
    
