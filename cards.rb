# An array is an ordered list.

# Poker game with arrays

def build_deck
  deck = ["Ace", "King", "Queen", "Jack", 10, 9, 8, 7, 6, 5, 4, 3, 2]
  full_deck = []
  suits = ["spades", "hearts", "clubs", "diamonds"]
  deck.each do |card|
    suits.each do |suit|
      full_deck.push(card.to_s + ":" + suit)
    end
  end
  full_deck
end

def deal card_array
  # poker_hand = [] # Don't need it here
  card_array = card_array.shuffle
  # Even though we don't end with only "poker_hand", it's still returning poker_hand.
  poker_hand = card_array[0..4]
end

deck = build_deck

my_hand = deal(deck)
puts "-------------"
puts "Your hand is: "
puts "-------------"
puts my_hand.sort
puts "-------------"
