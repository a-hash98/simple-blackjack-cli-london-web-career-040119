require_relative "blackjack.rb"

def runner(initial_round)
  welcome
  card_total = initial_round.to_i
  #display_card_total(card_total)
  loop do
    display_card_total(card_total)
    if card_total != nil &&  card_total > 21
      end_game(card_total)
      break
    else
      hit?(card_total)
    end
  end
  end_game(card_total)
end
