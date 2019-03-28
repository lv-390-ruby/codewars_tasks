# frozen_string_literal: true
require_relative 'menu'

i = true
while i
  print 'What is your command? '
  input = gets
  cmd = input.split(' ')
  if cmd.size == 1
    if cmd[0] == 'tasks' || cmd[0] == 'help' || cmd[0] == 'test' || cmd[0] == 'authors'
      begin
        comand = "Menu." + cmd[0]
        eval(comand)
      rescue
        puts 'It is wrong command! Use \'help\' command.'
      end
    elsif cmd[0] == 'exit'
      i = false
    end
  elsif cmd.size > 1
    if cmd[0] == 'show' || cmd[0] == 'run'
      begin
        comand = "Menu." + cmd[0] + "('" + cmd[1] + "')"
        eval(comand)
      rescue
        puts 'It is wrong command! Use \'help\' command.'
      end
    end
  else
    puts 'It is wrong command! Use \'help\' command.'
  end
end
