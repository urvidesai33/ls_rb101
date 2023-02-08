system("clear")

FULL_DECK = { 'D' => %w(A 2 3 4 5 6 7 8 9 10 K Q J),
              'H' => %w(A 2 3 4 5 6 7 8 9 10 K Q J),
              'C' => %w(A 2 3 4 5 6 7 8 9 10 K Q J),
              'S' => %w(A 2 3 4 5 6 7 8 9 10 K Q J) }

CARD_VALUES = { 'A' => [1, 11], '2' => 2, '3' => 3, '4' => 4, '5' => 5,
                '6' => 6, '7' => 7, '8' => 8, '9' => 9, '10' => 10,
                'J' => 10, 'Q' => 10, 'K' => 10 }

SUIT_NAMES = { 'D' => "Diamonds", 'H' => "Hearts",
               'C' => "Clubs", 'S' => "Spades" }
VALUE_NAMES = { 'A' => "Ace", '2' => "2", '3' => "3", '4' => "4", '5' => "5",
                '6' => "6", '7' => "7", '8' => "8", '9' => "9", '10' => "10",
                'J' => "Jack", 'Q' => "Queen", 'K' => "King" }

DEALER_THRESHOLD = 17
BUST_THRESHOLD = 21

def prompt(message)
  puts("=> #{message}")
end

def initialize_deck
  new_deck = FULL_DECK
  cards = []
  new_deck.each do |suit, value|
    value.each do |v|
      cards << [suit, v]
    end
  end
  cards
end

def deal_cards(deck)
  hand = []
  hand << deck.shift until hand.size == 2
  hand
end

def player_turn(deck, hand, points)
  loop do
    if busted?(points)
      break
    end
    prompt "Do you want to 'hit' or 'stay'?"
    play = gets.chomp.downcase
    if play == "stay" 
      break
    elsif play == 'hit'
      hit(deck, hand)
      prompt "Player has: #{show_hand(hand)}"
    else
      prompt "Invalid command. Try again."
    end
    points = calculate_points(hand)
  end
end

def dealer_turn(deck, hand)
  total = 0
  loop do
    total = 0
    total = calculate_points(hand)
    break if total >= DEALER_THRESHOLD || busted?(total)
    hit(deck, hand)
  end
end

def hit(deck, hand)
  hand << deck.shift
end

def calculate_points(hand)
  total_points = 0
  not_aces, aces = hand.partition { |_, y| y != 'A' }
  not_aces.each do |card|
    total_points += CARD_VALUES[card[1]]
  end
  aces.each do
    if total_points + CARD_VALUES['A'].max > BUST_THRESHOLD
      total_points += CARD_VALUES['A'].min
    else
      total_points += CARD_VALUES['A'].max
    end
  end
  total_points
end

def busted?(points)
  points > BUST_THRESHOLD
end

def no_busts?(points1, points2)
  points1 <= BUST_THRESHOLD &&
    points2 <= BUST_THRESHOLD
end

def card_name(card)
  VALUE_NAMES[card[1]] + " of " + SUIT_NAMES[card[0]]
end

def joinor(array, mark = ', ', word = 'and')
  case array.size
  when 0
    " "
  when 1
    array.first.to_s
  else
    array[0..array.size - 2].join(mark) + " " +
      word + " " + array.last.to_s
  end
end

def show_hand(hand)
  joinor(hand.map { |card| card_name(card) }).to_s
end

def see_the_rules(rules)
  loop do
    prompt "Do you want to see the rules? (y/n)"
    answer = gets.chomp.downcase
    if answer == 'y'
      prompt rules
      break
    elsif answer != 'n'
      prompt "Invalid response."
    else
      break
    end
  end
end


rules = <<-MSG
  Thank you for choosing to play Twenty One!
  
  Here are the rules:
  1. This game is played with a normal set of cards - 
    4 suits (hearts, diamonds, clubs, and spades)
    13 values (2, 3, 4, 5, 6, 7, 8, 9, 10, jack, queen, king, ace)
  2. The goal of the game is to get as close to 21 points as possible. 
    If you go over 21, you 'bust', which means you lose.
  3. The game has a 'dealer' and a 'player', each dealt 2 cards each to start.
  4. The 'player' goes first and will decide to 'hit' or 'stay' based on the cards dealt. After the player 'stays', it's the dealer's turn.
  5. The dealer will 'hit' until he reaches a threshold set by the game.
  6. The winner is the player who did not go 'bust', or if there's no bust, the winner is the one with the points closest to 21. 
  7. Enjoy the game!

  MSG

prompt "Welcome to the game of Twenty One!"
loop do
  see_the_rules(rules)
  player_score = []
  dealer_score = []
  loop do
    deck_of_cards = initialize_deck.shuffle
    player_hand = deal_cards(deck_of_cards)
    player_total = calculate_points(player_hand)
    prompt "Player has: " + show_hand(player_hand)
    dealer_hand = deal_cards(deck_of_cards)
    dealer_total = calculate_points(dealer_hand)
    prompt "Dealer has: #{card_name(dealer_hand[0])} and one other card."
    player_turn(deck_of_cards, player_hand, player_total)
    player_total = calculate_points(player_hand)
    
    if busted?(player_total)
      prompt "Player busted! Dealer wins!"
      dealer_score << 1
    else
      dealer_turn(deck_of_cards, dealer_hand)
      dealer_total = calculate_points(dealer_hand)
      if busted?(dealer_total)
        prompt "Dealer busted! Player wins!"
        player_score << 1
      end
    end
    

    if no_busts?(player_total, dealer_total)
      if player_total > dealer_total
        prompt "Player wins this game!"
        player_score << 1
      elsif player_total < dealer_total
        prompt "Dealer wins this game!"
        dealer_score << 1
      else
        prompt "This game is a tie!"
      end
    end

    prompt "Player has: #{show_hand(player_hand)} "
    prompt "Player has #{player_total} points"
    
    prompt "Dealer has: #{show_hand(dealer_hand)} "
    prompt "Dealer has #{dealer_total} points"

    prompt "Player has won #{player_score.sum} games.
      Dealer as won #{dealer_score.sum} games."
    break if dealer_score.sum == 5 || player_score.sum == 5
    prompt "Do you want to play again? (y/n)"
    again = gets.chomp.downcase
    break if again == 'n'
    system("clear")
    
  end

  
    if player_score.sum == 5
      prompt "Player is the ultimate winner!"
      break
    elsif dealer_score.sum == 5
      prompt "Dealer is the ultimate winner!"
      break
    end
    break
end
prompt "Thanks for playing Twenty One! Have a nice day."
