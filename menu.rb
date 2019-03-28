# frozen_string_literal: true

class Menu
  def self.tasks
    files = Dir.entries('./Tasks/').sort
    files.each { |file| puts file }
  end

  def self.show(file_name)
    file_name = 'Tasks/' + file_name
    puts "\"#{file_name}\":"
    text = File.open(file_name).read
    text.gsub!(/\r\n?/, "\n")
    text.each_line { |line| print line.to_s unless line =~ /^#/ }
  end

  def self.run(file_name)
    file_name = 'Tasks/' + file_name
    require_relative file_name
    run_task
  end

  def self.authors
    tasks = Dir.entries('./Tasks/').sort #['keep_hydrated.rb', 'artificial_rain.rb', 'approximation.rb']
    authors = {}
    tasks.each do |task_name|
      text = File.open(task_name).read
      author = text.match(/Author: [a-zA-Z]+ [a-zA-Z]+/).to_s
      authors[task_name] = author.sub(/Author: /, '')
    end
    a = authors.values.uniq.sort
    puts 'All authors:'
    a.each do |author|
      puts "#{author} tasks:"
      authors.each { |k, v| puts "\t#{k}" if v == author }
    end
  end
end
