

INITIAL_MARKER = ' '
PLAYER_MARKER = 'X'
COMPUTER_MARKER = 'O'
WINNING_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] + # rows
                [[1, 4, 7], [2, 5, 8], [3, 6, 9]] + # columns
                [[1, 5, 9], [3, 5, 7]]              # diagonals

def prompt(msg)
  puts "=> #{msg}"
end

def joinor(array, mark = ', ', word = 'or')
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

# rubocop:disable Metrics/AbcSize
def display_board(brd)
  system 'clear'
  puts "You're a #{PLAYER_MARKER}. Computer is #{COMPUTER_MARKER}"
  puts ""
  puts "     |     |"
  puts " #{brd[1]}   | #{brd[2]}   | #{brd[3]}"
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts " #{brd[4]}   | #{brd[5]}   | #{brd[6]}"
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts " #{brd[7]}   | #{brd[8]}   | #{brd[9]}"
  puts "     |     |"
  puts ""
end
# rubocop:enable Metrics/AbcSize

def initialize_board
  new_board = {}
  (1..9).each { |num| new_board[num] = INITIAL_MARKER }
  new_board
end

def empty_squares(brd)
  brd.keys.select { |num| brd[num] == INITIAL_MARKER }
end

def choose_first_player
  loop do
    prompt "Choose who goes first: Player or Computer?"
    first_player = gets.chomp.downcase
    if first_player.start_with?('p')
      return "Player"
    elsif first_player.start_with?('c')
      return "Computer"
    else
      prompt "Invalid selection.Try Again."
    end
  end
end

def computer_picks_player
  ["Player", "Computer"].sample
end


def place_piece!(brd, player)
  if player == "Player"
    player_places_piece!(brd)
  else
    computer_places_piece!(brd)
  end
end

def alternate_player(player)
  if player == "Player"
    "Computer"
  else
    "Player"
  end
end

def player_places_piece!(brd)
  square = ''
  loop do
    prompt "Choose a position to place a piece: #{joinor(empty_squares(brd))}"
    square = gets.chomp.to_i
    break if empty_squares(brd).include?(square)
    prompt "Sorry that's not a valid choice."
  end
  brd[square] = PLAYER_MARKER
end

def computer_places_piece!(brd)
  # offensive play
  square = find_at_risk_square(brd, COMPUTER_MARKER).sample
  # defensive play
  square = find_at_risk_square(brd, PLAYER_MARKER).sample if square.nil?
  # square 5
  square == 5 if brd[5] == INITIAL_MARKER && square.nil?
  # play anyway
  square = empty_squares(brd).sample if square.nil?
  brd[square] = COMPUTER_MARKER
end

def find_at_risk_square(brd, marker)
  defensive_plays = WINNING_LINES.map do |line|
    if brd.values_at(*line).count(marker) == 2
      line.select { |mark| brd[mark] == INITIAL_MARKER }
    end
  end
  if !defensive_plays.nil?
    defensive_plays.flatten!
    defensive_plays.compact!
  end
end

def board_full?(brd)
  empty_squares(brd).empty?
end

def someone_won?(brd)
  !!detect_winner(brd)
end

def detect_winner(brd)
  WINNING_LINES.each do |line|
    if brd.values_at(*line).count(PLAYER_MARKER) == 3
      return 'Player'
    elsif brd.values_at(*line).count(COMPUTER_MARKER) == 3
      return 'Computer'
    end
  end
  nil
end

# method to keep score
def score_card(brd, player_score, computer_score)
  if detect_winner(brd) == "Player"
    player_score << 1
  elsif detect_winner(brd) == "Computer"
    computer_score << 1
  end
end

player_score = []
computer_score = []

loop do # this is the main loop
  board = initialize_board
  current_player = computer_picks_player
  
  loop do # this is the game play loop
    display_board(board)
    place_piece!(board, current_player)
    current_player = alternate_player(current_player)
    break if someone_won?(board) || board_full?(board)
  end

  display_board(board)
  if someone_won?(board)
    prompt "#{detect_winner(board)} won!"
    score_card(board, player_score, computer_score)
  else
    prompt "It's a tie!"
  end
  prompt "The score is: Player: #{player_score.sum}
                Computer: #{computer_score.sum}"

  if player_score.sum == 5
    prompt "Player is the ultimate winner!"
    break
  elsif computer_score.sum == 5
    prompt "Computer is the ultimate winner!"
    break
  end
  prompt "Play again? (y or n)"
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt "Thanks for playing Tic Tac Toe. Good Bye!"
