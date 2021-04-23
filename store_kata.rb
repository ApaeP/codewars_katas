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
      puts "\n\n\n!!! #{@title} (lvl #{@level}) already exists\n (PATH = #{file_path}) !!!\n\n"
      puts "Overwrite? (y / n)"
      overwrite = gets.chomp
      until ['y', 'n'].include?(overwrite)
        puts "please answer by 'y' or 'n'"
        overwrite = gets.chomp
      end
      raise StandardError.new "STOPPING OVERWRITING" unless overwrite == 'y'
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

  def open_in_sublime
    Dir.chdir "#{$dir_path}"
    puts "stt #{file_path}"
    system "st #{file_path}"
    system "open #{file_path}"
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
      puts "\n\n\e[91m\e[1mInvalid URL\n\e[0m\n"
      puts "Press p to enter URL manually, or any other key to scan screen again"
      answer = gets.chomp
      if answer == 'p'
        puts "enter url :"
        @url = validate_url(gets.chomp)
      else
        @url = validate_url(auto_reader)
      end
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

def auto_reader
  require 'rtesseract'

  # take screenshot
  puts "Taking screenshot\n"
  system "screencapture -x -t tiff ./temporary_screencapture.tif"
  # retrieve present url
  puts "Reading screenshot and retrieving URL"
  url = RTesseract.new("temporary_screencapture.tif").to_s.split(' ').find { |e| e.start_with?('http') }
  # delete image
  until !url.nil?
    # "\e[92m\e[5m\e[1mCORRECT\e[25m\e[0m" : "\e[91m\e[5m\e[1mINCORRECT\e[25m\e[0m"
    puts "\n\nThe kata URL should be \e[91m\e[1mentirely displayed\n\e[0m on your screen when launching this script,\nPlease, make it visible and type any key"
    system "rm ./temporary_screencapture.tif"
    gets
    system "screencapture -x -t tiff ./temporary_screencapture.tif"
    url = RTesseract.new("temporary_screencapture.tif").to_s.split(' ').find { |e| e.start_with?('http') }
  end
  puts "\e[92m\e[1mURL found (#{url})\n\e[0m"
  puts "Deleting screenshot"
  system "rm ./temporary_screencapture.tif"
  puts "=============================="
  p url
  puts "=============================="
  url
end

def launch
  # puts "==============================================================================="
  # puts "================================= Kata URL : =================================="
  # puts "==============================================================================="
  kata = Kata.new(auto_reader)
  # puts "==============================================================================="
  # puts "==============================================================================="
  # puts "==============================================================================="
  puts "\n\nFile created (title: #{kata.title} | lvl: #{kata.level})"
  kata.write
  puts "==============================================================================="
  puts "\n\nadd - commit - push (#{kata.file_path})\n\n"
  kata.push_github
  puts "==============================================================================="
  puts "\n\ndone"
  puts "==============================================================================="
  puts "\n\nopening file for checking"
  kata.open_in_sublime
  puts "===============================================================================\n"
end

launch
