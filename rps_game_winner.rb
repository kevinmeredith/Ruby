class WrongNumberOfPlayersError < StandardError ; end
class NoSuchStrategyError < StandardError ; end
def rps_game_winner(game)

legal_values = ["R", "P", "S"]

  raise WrongNumberOfPlayersError unless game.length == 2
  game.each do |map|
    puts "#{map[0]} plays #{map[1]}"
    raise NoSuchStrategyError unless legal_values.include? map[1]
  end 

player1 = game[0][0]
player1_move = game[0][1]
player2 = game[1][0]
player2_move = game[1][1]

case player1_move
when "R"
  case player2_move
  when "R", "S"
    print_winner(player1, player1_move)
  else 
    print_winner(player2, player2_move)
  end
when "S"
  case player2_move
  when "S", "P"
    print_winner(player1, player1_move)
  else
    print_winner(player2, player2_move)
  end
else #Paper
  case player2_move
  when "P", "R"
    print_winner(player1, player1_move)
  else
    print_winner(player2, player2_move)
  end
end

puts "***** end game *****"

end

def print_winner(winner, move)
  puts "#{winner} wins with #{move}"
end

rps_game_winner([ [ "Armando", "P" ], [ "Dave", "S"] ])
rps_game_winner([ [ "Kevin", "R" ], ["Bubba", "P"] ])
rps_game_winner([ [ "Kevin", "R" ], ["Cheater", "Z"] ])
