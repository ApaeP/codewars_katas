# $account, $password : codewars_email, codewars_password => should exist
# current directory should be tracked by git and have a remote (origin) on Github
require_relative '../credits'

class Kata
  require 'watir'
  attr_reader :level, :title, :file_path

  def self.save_kata
    new
  end

  def initialize
    @language = nil
    @url = validate_url(auto_reader)
    @browser = open_browser_authenticated
    @level = read_level
    @title = read_title
    @instructions = read_instructions
    @solution = read_solution
    @browser.close
    @file_path = "#{`pwd`.chomp}/Ruby/#{@level}kyu_#{@title.downcase.split.join('_')}.rb"
    create_rb_file
    write
    add_commit_push
    open_in_sublime
  end

  private

  def add_commit_push
    Dir.chdir "#{$dir_path}"
    `git add .; git commit -m \"Kata completed (#{@title} #{@level}kyu)\"; git push origin master`
  end

  def open_in_sublime
    `open #{file_path}`
  end

  def create_rb_file
    if File.file?(@file_path)
      puts "This Kata \e[91m\e[1malready exists\e[0m.\nOverwrite? (y / n)\n"
      overwrite = one_char_gets
      until ['y', 'n'].include?(overwrite)
        puts "please answer by 'y' or 'n'"
        overwrite = one_char_gets
      end
      raise "STOP OVERWRITING" unless overwrite == 'y'
      `rm #{@file_path}`
    end
    `touch #{@file_path}`
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

  def auto_reader
    take_screenshot
    url = retrieve_url_from_screenshot
    delete_screenshot
    until !url.nil?
      puts "\n\nKata URL should be \e[91m\e[1mentirely displayed\e[0m on the screen.\nPress 'm' to enter URL manually or any other key to try again\n"
      answer = one_char_gets
      if answer == 'm'
        puts "\nEnter the URL"
        url = gets.chomp
      else
        puts "Trying again"
        take_screenshot
        url = retrieve_url_from_screenshot
        delete_screenshot
        puts "\e[92m\e[1mURL found (#{url})\n\e[0m" unless url.nil? || url.empty?
      end
    end
    url
  end

  def validate_url(url)
    if url.end_with?('ruby') || url.end_with?('solutions')
      @language = 'rb'
      "#{url.match(/^\w*:\/\/\w*.\w*\.\w*\/\w*\/\w*/).to_s}/train/ruby"
    elsif url.end_with?('javascript')
      @language = "js"
      "#{url.match(/^\w*:\/\/\w*.\w*\.\w*\/\w*\/\w*/).to_s}/train/javascript"
    else
      puts "\n\n\e[91m\e[1mInvalid URL\n\e[0m\n"
      puts "Press 'p' to enter URL manually, 'q' to quit or any other key to scan screen again"
      answer = one_char_gets
      if answer == 'p'
        puts "enter url :"
        @url = validate_url(gets.chomp)
      elsif answer == 'q'
        raise "STOPPED"
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
    start_index, solution = 2, ""
    until solution.start_with?('Ruby')
      solution = @browser.div(id: 'description_area').li(index: start_index).text
      start_index += 1
      raise "NO SOLUTION FOUND" if start_index == 50
    end
    solution
  end

  def read_instructions
    @browser.div(id: 'description').text
  end

  def take_screenshot
    `screencapture -x -t tiff ./temporary_screencapture.tif`
  end

  def delete_screenshot
    `rm ./temporary_screencapture.tif`
  end

  def retrieve_url_from_screenshot
    require 'rtesseract'
    RTesseract.new("temporary_screencapture.tif").to_s.split(' ').find { |e| e.start_with?('http') }
  end

  def one_char_gets
    begin
      system("stty raw -echo")
      decision = STDIN.getc
    ensure
      system("stty -raw echo")
    end
  end
end

def launch
  kata = Kata.save_kata
  # puts "Create file (title: #{kata.title} | lvl: #{kata.level})"
  # puts "add - commit - push (#{kata.file_path})"
  # kata.add_commit_push
  # kata.open_in_sublime
end

launch
