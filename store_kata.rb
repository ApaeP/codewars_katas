# Fetching infos from a codewars kata url
# create a file in a subdirectory "codewars_katas"
# push it on GitHub
require_relative '../credits'

class Kata
  attr_accessor :url, :level, :title, :instructions, :solution, :file_path, :language
  require 'watir'

  def initialize(url)
    @language = nil
    @url = validate_url(url)
    @browser = open_browser_authenticated
    @level = read_level
    @title = read_title
    @instructions = read_instructions
    @solution = read_solution
    @browser.close
    @file_path = "#{$dir_path}/Ruby/#{@level}kyu_#{@title.downcase.split.join('_')}.rb"
    create_rb_file(@file_path)
  end

  def create_rb_file(file_path)
    if File.file?(file_path)
      puts "!!! #{@title} (lvl #{@level}) already exists\n (PATH = #{file_path})"
      puts "Override? (y / n)"
      override = gets.chomp
      raise unless override == 'y'
      system "rm #{file_path}"
    end
    system "touch #{file_path}"
  end

  def write
    File.open(@file_path, "w") { |e| e.puts("Codewars - Kata Solution (Ruby)\n#{@title.upcase} (#{@level} kyu)\n\n") }
    File.open(@file_path, "a") { |e| e.puts("Instructions\n#{@instructions}\n\nSolution\n") }
    f = File.open(@file_path, "r")
    lines = f.readlines
    f.close
    File.open(@file_path, "w") { |f| f.puts lines.map { |l| l == "\n" ? "\n" : l.prepend('# ') }.join }
    File.open(@file_path, "a") { |e| e.puts("#{@solution[5..-1]}") }
    File.open(@file_path, "a") { |e| e.puts("\n\n# Completed at : #{Time.now}") }
  end

  def push_github
    Dir.chdir "#{$dir_path}" # system "cd #{$dir_path}"
    puts "\ncommit\n"
    system "git add ."
    system "git commit -m \"Kata completed (#{@title} #{@level}kyu)\""
    puts "\npush\n"
    system "git push origin master"
  end

  private

  def validate_url(url)
    if url.end_with?('ruby') || url.end_with?('solutions')
      @language = 'rb'
      "#{url.match(/^\w*:\/\/\w*.\w*\.\w*\/\w*\/\w*/).to_s}/train/ruby"
    elsif url.end_with?('javascript')
      @language = "js"
      "#{url.match(/^\w*:\/\/\w*.\w*\.\w*\/\w*\/\w*/).to_s}/train/javascript"
    else
       puts "\n\nURL Not accepted\n"
       puts "url>"
       @url = validate_url(gets.chomp)
    end

  end

  def open_browser_authenticated
    browser = Watir::Browser.new
    browser.goto('https://www.codewars.com/users/sign_in')
    browser.text_field(id: 'user_email').set($account)
    browser.text_field(id: 'user_password').set($password)
    browser.button.click
    browser.goto(@url)
    browser
  end

  def read_level
    @browser.view(id: 'cc_play_view').span.text[0]
  end

  def read_title
    title = @browser.title
    title = title.start_with?('Training on') ? title[12..title.chars.index('|') - 2] : title[0..title.chars.index('|') - 2]
    title.gsub!(/[^\w\s]/, '')
    title
  end

  def read_solution
    @browser.a(data_tab: 'solutions').click
    start_index = 2
    sol = ""
    until sol.start_with?('Ruby')
      sol = @browser.div(id: 'description_area').li(index: start_index).text
      start_index += 1
      raise StandardError.new "No solution found" if start_index == 50
    end
    sol
  end

  def read_instructions
    @browser.div(id: 'description').text
  end
end

def launch
  puts "==============================================================================="
  puts "================================= Kata URL : =================================="
  puts "==============================================================================="
  kata = Kata.new(gets.chomp)
  puts "\nFile created (title: #{kata.title} | lvl: #{kata.level})"
  kata.write
  puts "\n\nadd - commit - push (#{kata.file_path})\n\n"
  kata.push_github
  puts "\n\ndone"
end

launch
