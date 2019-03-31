
def welcome
  puts "Welcome to the Blackjack Table"
  # code #welcome here
end

def deal_card
  return rand(1..11)
  # code #deal_card here
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
  #return gets
  # code #display_card_total here
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
  # code #prompt_user here
end

def get_user_input
  return gets.chomp
  # code #get_user_input here
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
  # code #end_game here
end

def initial_round
  sum = deal_card+deal_card
  display_card_total(sum)
  return sum
  # code #initial_round here
end

def hit?(card_total)
  prompt_user
  inp = get_user_input
  until inp == 'h' || 's'
    invalid_command
    prompt_user
    inp = get_user_input
  end
  if inp == 'h'
    card_total = deal_card+card_total.to_i
  end
  return card_total  # code hit? here
end

def invalid_command
  puts "Please enter a valid command"
  # code invalid_command here
end

#####################################################
# get every test to pass before coding runner below #
#####################################################
def runner
  welcome
  card_total = initial_round.to_i
  display_card_total(card_total)
  #display_card_total(card_total)
  until card_total != nil &&  card_total > 21
    hit?(card_total)
    display_card_total(card_total)
    
    end_game(card_total)
    
end
