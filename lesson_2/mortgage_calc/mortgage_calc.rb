require 'yaml'
MESSAGES = YAML.load_file('mortgage_calc_messages.yml')
# puts MESSAGES.inspect
system("clear")

MONTHS_IN_A_YEAR = 12

def prompt(message)
  puts("=> #{message}")
end

def valid_number?(user_input)
  # number.is_a?(Float) || number.is_a?(Integer)
  user_input.to_f.to_s == user_input && user_input.to_f > 0
end

def calculate_duration_months(loan_duration_years)
  loan_duration_years * MONTHS_IN_A_YEAR
end

def calculate_monthly_interest_rate(apr)
  (apr / 100) / MONTHS_IN_A_YEAR
end

def calculate_monthly_payment(principal, apr, loan_duration_years)
  monthly_interest_rate = calculate_monthly_interest_rate(apr)
  loan_duration_months = calculate_duration_months(loan_duration_years)
  if apr != 0 
    principal * 
      (monthly_interest_rate / (1 - ((1 + monthly_interest_rate)\
      **(-loan_duration_months))))
  else
    principal / loan_duration_months
  end
end

name = ''
prompt(MESSAGES['welcome'])
loop do
  name = gets.chomp
  break if name.empty? == false
  # break if name.present?
  prompt("Please enter a valid name")
end
prompt(MESSAGES['greeting'] + ' ' + name + '!')
prompt(MESSAGES['questions'])

loop do # main loop
  principal = ''
  apr = ''
  loan_duration_years = ''

  prompt(MESSAGES['loan_amount'])
  loop do
    principal = gets.chomp
    if valid_number?(principal)
      principal = principal.to_f
      break
    else
      prompt(MESSAGES['valid_loan_amount'])
    end
  end

  prompt(MESSAGES['apr_percent'])
  loop do
    apr = gets.chomp
    if valid_number?(apr)
      apr = apr.to_f
      break
    else
      prompt(MESSAGES['valid_apr'])
    end
  end

  prompt(MESSAGES['loan_dur_years'])
  loop do
    loan_duration_years = gets.chomp
    if valid_number?(loan_duration_years)
      loan_duration_years = loan_duration_years.to_f
      break
    else
      prompt(MESSAGES['valid_duration'])
    end
  end

  monthly_interest_percent = (calculate_monthly_interest_rate(apr) * 100)
  monthly_payment = 
    calculate_monthly_payment(principal, apr, loan_duration_years)
  display_summary = <<-MSG
    Thank you for using Mortgage Calculator, #{name}.
    
    Here is your loan summary:
    Principal Loan Amount: $#{principal}
    APR: #{apr}%  (Monthly Interest Rate: #{monthly_interest_percent.round(2)}%)
    Loan Duration: #{loan_duration_years} years 
                or #{calculate_duration_months(loan_duration_years).round(2)} months
    Your monthly payment will be $#{monthly_payment.round(2)}.

    MSG

  prompt(display_summary)
  again = ''
  prompt(MESSAGES['again'])
  loop do
    again = gets.chomp.downcase
    if ['y', 'n'].include?(again)
      break
    else
      prompt(MESSAGES['try_again'])
    end
  end
  break if again == 'n'
end
prompt(MESSAGES['thanks'])
