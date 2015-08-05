class WrongNumberOfPlayersError < StandardError ; end
class NoSuchStrategyError < StandardError ; end

def rps_result(m1, m2)
  if m1 == "R" && m2 == "S" ||        # Rock beats Scissors 
        m1 == "S" && m2 == "P" ||     # Scissors beats Paper
           m1 == "P" && m2 == "R" ||  # Paper beats Rock
              m1 == m2                # If same move the first player wins 
    return 0
  else
    return 1
  end 
end

def rps_game_winner(game)
  strategy = ["R","S","P"]

  puts game.inspect
  raise WrongNumberOfPlayersError unless game.length == 2
  raise NoSuchStrategyError unless strategy.include?(game[0][1])
  raise NoSuchStrategyError unless strategy.include?(game[1][1])
  
  winner = rps_result game[0][1], game[1][1]
  puts game[winner].inspect 
  return game[winner]

end

def rps_tournament_winner(tournament)
  if tournament[0][0].is_a? String
    return rps_game_winner tournament
  else
    
  return rps_tournament_winner( 
    [ rps_tournament_winner(tournament[0]), 
      rps_tournament_winner(tournament[1]) ] )
  end
end

puts rps_game_winner([ ["Armando", "P"], ["Dave", "S"] ]).inspect
puts rps_tournament_winner([[[["Armando","P"],["Dave","S"]],[["Richard","R"],["Michael","S"]],],[[["Allen","S"],["Omer","P"]],[["David E.","R"],["Richard X.","P"]]]]).inspect
