# Codewars - Kata Solution (Ruby)
# FOOTBALL LEAGUE TABLE SYSTEM (6 kyu)

# Instructions
# Complete the LeagueTable class.
# The LeagueTable class is used to store results of football (soccer) matches played, as well as return and display various stats about each team.
# Match results will always be passed through the push method as a String in the format: "Home Team 0 - 0 Away Team". For example: "Man Utd 3 - 0 Liverpool".
# When a new match result is given, points are awarded to teams as follows:
# 3 points for a win
# 1 point for a draw
# 0 points for loss
# The class must have the following methods:
# push(match_string)             # insert a new match record

# get_points(team_name)          # Returns the no. of points a team has, 0 by default
# get_goals_for(team_name)       # Returns the no. of goals a team has scored, 0 by default
# get_goals_against(team_name)   # Returns the no. of goals a team has conceeded (had scored against them), 0 by default
# get_goal_difference(team_name) # Return the no. of goals a team has scored minus the no. of goals a team has conceeded, 0 by default
# get_wins(team_name)            # Return the no. of wins a team has, 0 by default
# get_draws(team_name)           # Return the no. of draws a team has, 0 by default
# get_losses(team_name)          # Return the no. of losses a team has, 0 by default
# For example:
# lt = LeagueTable.new

# lt.push("Man Utd 3 - 0 Liverpool")

# puts lt.get_goals_for("Man Utd") => 3
# puts lt.get_points("Man Utd") => 3
# puts lt.get_points("Liverpool") => 0
# puts lt.get_goal_difference("Liverpool") => -3

# lt.push("Liverpool 1 - 1 Man Utd")

# puts lt.get_goals_for("Man Utd") => 4
# puts lt.get_points("Man Utd") => 4
# puts lt.get_points("Liverpool") => 1
# puts lt.get_goals_against("Man Utd") => 1

# puts lt.get_points("Tottenham") => 0

# Solution
class LeagueTable
  def initialize
    @teams = Hash.new
  end

  def push(str)
    arr = str.split(' ')
    teams, score = fetch_teams(arr), fetch_score(arr)
    winner = define_winner(score, teams)
    teams.each { |e| new_team(e) }
    if winner == 'draw'
      teams.each do |x|
        e = @teams[x]
        e[:draws] += 1
        e[:points] += 1
        e[:conceeded] += score.first
        e[:scored] += score.first
      end
    else
      p1 = @teams[winner]
      p2 = @teams[(teams - [winner]).first]
      p1[:wins] += 1
      p1[:points] += 3
      p1[:conceeded] += score.min
      p1[:scored] += score.max
      p2[:losses] += 1
      p2[:conceeded] += score.max
      p2[:scored] += score.min
    end
  end

  def get_goals_for(name)
    @teams[name][:scored] rescue 0
  end

  def get_points(name)
    @teams[name][:points] rescue 0
  end

  def get_goals_against(name)
    @teams[name][:conceeded] rescue 0
  end

  def get_goal_difference(name)
    @teams[name][:scored] - @teams[name][:conceeded] rescue 0
  end

  def get_wins(name)
    @teams[name][:wins] rescue 0
  end

  def get_draws(name)
    @teams[name][:draws] rescue 0
  end

  def get_losses(name)
    @teams[name][:losses] rescue 0
  end

  private

  def fetch_teams(arr)
    [arr[0..(arr.index('-') - 2)].join(' '), arr[(arr.index('-') + 2)..-1].join(' ')]
  end

  def fetch_score(arr)
    [arr[arr.index('-') - 1], arr[arr.index('-') + 1]].map(&:to_i)
  end

  def define_winner(score, teams)
    score.uniq.size == 1 ? 'draw' : score.sort == score ? teams[1] : teams[0]
  end
  
  def new_team(name)
    return unless @teams[name].nil?
    @teams[name] = {points: 0, conceeded: 0, scored: 0, wins: 0, draws: 0, losses: 0}
  end
end


# Completed at : 2021-01-03 01:36:11 +0100
