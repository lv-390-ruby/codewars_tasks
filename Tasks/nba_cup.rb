# Author: Khrystyna Mandzii
# You are given a string with results of NBA teams separated by commas e.g:

# result_sheet = 'Los Angeles Clippers 104.2'\
# 'Dallas Mavericks 88,'\
# 'New York Knicks 101 Atlanta Hawks 112.3,'\
# 'Indiana Pacers 103 Memphis Grizzlies 112,'\
# 'Los Angeles Lakers 111 Minnesota Timberwolves 112,'\
# 'Phoenix Suns 95 Dallas Mavericks 111,'\
# 'Portland Trail Blazers 112 New Orleans Pelicans 94,'\
# 'New York Knicks 101 Atlanta Hawks 112.3'
# # # # Given a team (parameter : to_find) e.g:

# to_find = 'New York Knicks'

# nba_cup(result_sheet,to_find)
# "Team Name:W=nb;D=nb;L=nb;Scored=nb;Conceded=nb;Points=nb"

# If a team name can't be found in the given string
# returns "Team Name:This team didn't play!".

# If a score is a float number will

# returns "Error(float number):the concerned string"
class Nba
  def initialize(result_sheet, to_find)
    @games = get_games(result_sheet)
    @to_find = to_find
    @params = { W: 0, D: 0, L: 0, Scored: 0, Conceded: 0, Points: 0 }
    @rank = ''
  end

  def get_games(result_sheet)
    games = result_sheet.split(',')
    games.map! do |game|
      Hash[game.scan(/(?<team>.+?)(?<score>\d+\.+\d{1,3}|\d{1,3})/)]
    end
  end

  def ranking_nba
    @games.each do |game|
      game.each do |key, value|
        next if checked_team_non_existance(key)
        break if find_error_float(key, value)

        find_enemy(game)
        compare_game_score(@params, @to_find_score, @enemy_score)
        show_string_rank
      end
    end
    @rank
  end

  def checked_team_non_existance(key)
    if key.strip != @to_find
      return true if @rank.include?(@to_find.to_s)

      @rank = "#{@to_find}: This team didn't play!"
    end
  end

  def find_enemy(game)
    game.each do |key, value|
      if key.strip != @to_find
        @enemy_team = key.strip
        @enemy_score = value.to_i
      else
        @to_find_score = value.to_i
      end
    end
  end

  def show_string_rank
    @rank = "#{@to_find}:"
    @params.each do |key, value|
      @rank << "#{key}=#{value};"
    end
  end

  def compare_game_score(params, to_find_score, enemy_score)
    params[:W] += 1 if to_find_score > enemy_score
    params[:D] += 1 if to_find_score == enemy_score
    params[:L] += 1 if to_find_score < enemy_score
    params[:Scored] += to_find_score
    params[:Conceded] += enemy_score
    params[:Points] = params[:W] * 3 + params[:D]
    params
  end

  def find_error_float(key, value)
    @rank = "Error float:#{key}#{value}" if value.include?('.')
  end
end

def run_task
  puts 'Please enter the string like this'\
  '"Odessa 289 Lviv 293, Kiev 292 Lviv 231"'
  result_sheet = gets.chomp
  puts 'Enter team name'
  to_find = gets.chomp
  nba = Nba.new(result_sheet, to_find)
  puts nba.ranking_nba
end

run_task
