require 'pry'
def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  return rand(1..11)
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets prompt_user()
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round()
  card_total =  (deal_card()) + (deal_card())
  print display_card_total(card_total)
  return card_total 
end
#binding.pry
def hit?(number)
  total = number
  prompt_user()
  user_input = get_user_input()
  if user_input == 'h'
    new_card = deal_card
    total += new_card
    elsif user_input == 's'
      total 
    else
      invalid_command()
      hit?(number)
  end 
  return total
end
def invalid_command()
  puts "Please enter a valid command"
  
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome()
  total = initial_round()
    until total > 21
    total = hit?(total)
    display_card_total(total)
    end
  end_game(total)
end
    
