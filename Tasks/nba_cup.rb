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
  res[:points] += res[:w] * 3 + res[:d]
  res
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

def check_team(game, to_find, str)
  game.key?(to_find) ? str : "#{to_find}:This team didn't play!"
end

def nba_cup(result_sheet, to_find)
  results = { w: 0, d: 0, scored: 0, conceded: 0, points: 0 }
  str = '' if to_find.empty?
  result_sheet.split(',').each do |game|
    parse_result_sheet(game)
    find_score(@game, to_find)
    next unless @game.key?(to_find)

    str = error_float(@game, to_find, @enemy_team, str)
    str = score_comparison(results, @to_find_score, @enemy_score, to_find, str)
    str = check_team(@game, to_find, str)
  end
  str
end
