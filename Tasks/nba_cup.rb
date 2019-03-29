# Author: Khrystyna Mandzii
# You are given a string with results of NBA teams separated by commas e.g:

# result_sheet = 'Los Angeles Clippers 104.2'\
# 'Dallas Mavericks 88,'\
# 'New York Knicks 101 Atlanta Hawks 112.3,'\
# 'Indiana Pacers 103 Memphis Grizzlies 112,'\
# 'Los Angeles Lakers 111 Minnesota Timberwolves 112,'\
# 'Phoenix Suns 95 Dallas Mavericks 111,'\
# 'Portland Trail Blazers 112 New Orleans Pelicans 94'

# # # Given a team (parameter : to_find) e.g:

# to_find = 'New York Knicks'

# nba_cup(result_sheet,to_find)
# "Team Name:W=nb;D=nb;L=nb;Scored=nb;Conceded=nb;Points=nb"

# If a team name can't be found in the given string
# returns "Team Name:This team didn't play!".

# If a score is a float number will

# returns "Error(float number):the concerned string"
# If the team name "" returns ""

def error_float(game, to_find, enemy_team, str)
  if game[to_find].include?('.')
    "Error(float number):#{to_find} #{game[to_find]} " \
    "#{enemy_team} #{game[enemy_team]}"
  elsif game[enemy_team].include?('.')
    "Error(float number):#{enemy_team} #{game[enemy_team]} " \
    "#{to_find} #{game[to_find]}"
  else
    str
  end
end

def comparison(res, to_find_score, enemy_score)
  res[:w] += 1 if to_find_score > enemy_score
  res[:l] += 1 if to_find_score < enemy_score
  res[:d] += 1 if to_find_score == enemy_score
  res[:points] = res[:w] * 3 + res[:d]
  res.inspect
end

def score_comparison(res, to_find_score, enemy_score, to_find, str)
  comparison(res, to_find_score, enemy_score)
  res[:conceded] += enemy_score
  res[:scored] += to_find_score
  unless str.include?('Error')
    str = "#{to_find}:W=#{res[:w]};D=#{res[:d]};L=#{res[:l]};"\
    "Scored=#{res[:scored]};Conceded=#{res[:conceded]};"\
    "Points=#{res[:points]}"
  end
  str
end

def parse_result_sheet(game)
  teams = game.split(/(?!\d{1,3}[a-z]{1,3})(?:\d+\.+\d{1,3}|\d{1,3})/)
  score = game.scan(/(?!\d{1,3}[a-z]{1,3})(?:\d+\.+\d{1,3}|\d{1,3})/)
  teams.map!(&:strip)
  @game = teams.zip(score).to_h
end

def find_score(game, to_find)
  @enemy_team = game.keys[0] == to_find ? game.keys[1] : game.keys[0]
  @enemy_score = game[@enemy_team].to_i
  @to_find_score = game[to_find].to_i
end

def check_team(team_exists, str, to_find)
  team_exists ? str : "#{to_find}:This team didn't play!"
end

def nba_cup(result_sheet, to_find)
  results = { w: 0, d: 0, l: 0, scored: 0, conceded: 0, points: 0 }
  team_exists = false
  str = ''
  return str if to_find.empty?
  result_sheet.split(',').each do |game|
    parse_result_sheet(game)
    find_score(@game, to_find)
    next unless @game.key?(to_find)
    str = error_float(@game, to_find, @enemy_team, str)
    str = score_comparison(results, @to_find_score, @enemy_score, to_find, str)
    team_exists = true
  end
  check_team(team_exists, str, to_find)
end

def run_task
  puts 'Enter string like this'\
  '"Lviv 201 Odessa 120, Odessa 102 Berlin 292"'
  result_sheet = gets.chomp
  puts 'Enter name of team'
  to_find = gets.chomp
  puts nba_cup(result_sheet, to_find)
end
