system("clear")
CHOICE_TABLE = { 'r' => 'rock',
                 'p' => "paper",
                 'sc' => "scissors",
                 'sp' => "spock",
                 'l' => "lizard" }
VALID_CHOICES = CHOICE_TABLE.values
WINNING_CHOICE_COMBINATIONS = { rock: { scissors: 'win', lizard: 'win' },
                                paper: { rock: 'win', spock: 'win' },
                                scissors: { paper: 'win', lizard: 'win' },
                                lizard: { spock: 'win', paper: 'win' },
                                spock: { rock: 'win', scissors: 'win' } }
WIN_COUNT = 3

def prompt(message)
  puts "=> #{message}"
end

def convert_choice(user_input)
  if CHOICE_TABLE.key?(user_input)
    CHOICE_TABLE[user_input]
  else
    " "
  end
end

def valid_choice?(choice)
  VALID_CHOICES.include?(choice)
end

def win?(first, second)
  WINNING_CHOICE_COMBINATIONS[first.to_sym][second.to_sym] == 'win'
end

def display_results(player, computer)
  if win?(player, computer)
    prompt("You won!")
  elsif win?(computer, player)
    prompt("You lost!")
  else
    prompt("It's a tie!")
  end
end

# method to keep score
def update_score_card(player, computer, player_score, computer_score)
  if win?(player, computer)
    player_score <<
      WINNING_CHOICE_COMBINATIONS[player.to_sym][computer.to_sym]
  elsif win?(computer, player)
    computer_score <<
      WINNING_CHOICE_COMBINATIONS[computer.to_sym][player.to_sym]
  end
end

# method to tell us if there's a winner
def grand_winner?(player_score, computer_score)
  player_score.size == WIN_COUNT || computer_score.size == WIN_COUNT
end

# who won
def display_winner(player_score, computer_score)
  if computer_score.size == WIN_COUNT
    prompt("Computer is the grand winner!")
  elsif player_score.size == WIN_COUNT
    prompt("You are the grand winner!")
  end
end

choice = ''
computer_choice = ' '
player_score = []
computer_score = []
abbreviations = <<-MSG
  You can use abbreviations to make things easier: 
  r -> rock
  p -> paper
  sc -> scissors
  sp -> spock
  l -> lizard
  MSG

rules = <<-MSG
  These are the rules:
  Scissors beats Paper beats Rock
  beats Lizard beats Spock beats Scissors
  beats Lizard beats Paper beats Spock
  beats Rock beats Scissors
  MSG

  prompt("Welcome Player!")
  prompt(rules)
loop do
  loop do
    prompt("Choose one: #{VALID_CHOICES.join(',')}:")
    prompt(abbreviations)
    choice = gets.chomp.downcase
    choice = convert_choice(choice) if !VALID_CHOICES.include?(choice)
    if valid_choice?(choice)
      break
    else
      prompt("That's not a valid choice.")
    end
  end
  computer_choice = VALID_CHOICES.sample
  prompt("You chose: #{choice}; Computer chose: #{computer_choice}")
  display_results(choice, computer_choice)
  update_score_card(choice, computer_choice, player_score, computer_score)
  prompt("Score: You: #{player_score.size};\
     Computer: #{computer_score.size}")
  break if grand_winner?(player_score, computer_score)
end
display_winner(player_score, computer_score)
prompt('Thank you for playing!')
