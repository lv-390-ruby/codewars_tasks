#You are given a string with results of NBA teams separated by commas e.g:

result_sheet = "Los Angeles Clippers 104.2 Dallas Mavericks 88,New York Knicks 101 Atlanta Hawks 112,Indiana Pacers 103 Memphis Grizzlies 112,"\
"Los Angeles Lakers 111 Minnesota Timberwolves 112,Phoenix Suns 95 Dallas Mavericks 111,Portland Trail Blazers 112 New Orleans Pelicans 94,"\
"Sacramento Kings 104 Los Angeles Clippers 111,Houston Rockets 85 Denver Nuggets 105,Memphis Grizzlies 76 Cleveland Cavaliers 106,"\
"Milwaukee Bucks 97 New York Knicks 122,Oklahoma City Thunder 112 San Antonio Spurs 106,Boston Celtics 112 Philadelphia 76ers 95"

#Given a team (parameter : to_find) e.g:
to_find = "Los Angeles Clippers"

# nba_cup(result_sheet,to_find)

#returns "Team Name:W=nb of wins;D=nb of draws;L=nb of losses;Scored=nb;Conceded=nb;Points=nb"

#If a team name can't be found in the given string 
#returns "Team Name:This team didn't play!".

#If a score is a float number will 
#returns "Error(float number):the concerned string"

#If the team name "" returns ""

def nba_cup(result_sheet, to_find)
  return "" if to_find.empty?
  w = a = d = l = scored = conceded = 0
  team_exist = false
  
  result_sheet.split(',').each do |game|
    teams = game.split(/(?!\d{1,3}[a-z]{1,3})(?:\d+\.+\d{1,3}|\d{1,3})/).map(&:strip)
    score = game.scan(/(?!\d{1,3}[a-z]{1,3})(?:\d+\.+\d{1,3}|\d{1,3})/)
    
    game = teams.zip(score).to_h
    enemy_team = game.keys[0] == to_find ? game.keys[1] : game.keys[0]
    enemy_score = game[enemy_team].to_i
    to_find_score = game[to_find].to_i

    next unless game.has_key?(to_find)
    return "Error(float number):#{to_find} #{game[to_find]} #{enemy_team} #{game[enemy_team]}" if game[to_find].include?(".") 
    return "Error(float number):#{enemy_team} #{game[enemy_team]} #{to_find} #{game[to_find]}" if game[enemy_team].include?(".")

    w += 1 if to_find_score > enemy_score
    l += 1 if to_find_score < enemy_score
    d += 1 if to_find_score == enemy_score 
    conceded += enemy_score
    scored += to_find_score
    team_exist = true
  end  
  
  return "#{to_find}:This team didn't play!" unless team_exist
  points = w*3 + d
  "#{to_find}:W=#{w};D=#{d};L=#{l};Scored=#{scored};Conceded=#{conceded};Points=#{points}"
end
