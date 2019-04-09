# frozen_string_literal: true

require_relative 'menu'

i = true
while i
  print 'What is your command? '
  input = gets
  cmd = input.split(' ')
  if cmd.size == 1
    if %w[tasks help tests authors].include? cmd[0]
      begin
        comand = 'Menu.' + cmd[0]
        eval(comand)
      rescue
        puts 'It is wrong command! Use \'help\' command.'
      end
    elsif cmd[0] == 'exit'
      i = false
    end
  elsif cmd.size > 1
    if %w[show run test help info].include? cmd[0]
      begin
        comand = 'Menu.' + cmd[0] + "('" + cmd[1] + "')"
        eval(comand)
      rescue
        puts 'It is wrong command! Use \'help\' command.'
      end
    end
  else
    puts 'It is wrong command! Use \'help\' command.'
  end
end
