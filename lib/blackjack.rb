def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
end

def display_card_total(n)
  puts "Your cards add up to #{n}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game(n)
  puts "Sorry, you hit #{n}. Thanks for playing!"
end

def initial_round
  sum = 0
  2.times do
    deal_card
    sum += deal_card
  end
  #sum = deal_card + deal_card
  display_card_total(sum)
  return sum
end

def hit?(n)
  prompt_user
  response = get_user_input

  if response == 's'
    return n
  elsif response == 'h'
    n += deal_card
    return n
  else invalid_command

  end
end

def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome()
  counter = initial_round()
  until counter > 21
    counter = hit?(counter)
    display_card_total(counter)
  end
  end_game(counter)

end
