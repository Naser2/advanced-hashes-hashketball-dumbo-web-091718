
require 'pry'

def game_hash
   {
 :home => {
   :team_name => "Brooklyn Nets",
   :colors => ["Black", "White"],
   :players => [
     {
      :player_name => "Alan Anderson",
      :number => "0",
      :shoe => "16",
      :points => "22",
      :rebounds => "12",
      :assists => "12",
      :steals => "3",
      :blocks => "1",
      :slam_dunks => "1"
   }, {
      :player_name => "Reggie Evans",
      :number => "30",
      :shoe => "14",
      :points => "12",
      :rebounds => "12",
      :assists => "12",
      :steals => "12",
      :blocks => "12",
      :slam_dunks => "7"
   }, {
      :player_name => "Brook Lopez",
      :number => "11",
      :shoe => "17",
      :points => "17",
      :rebounds => "19",
      :assists => "10",
      :steals => "3",
      :blocks => "1",
      :slam_dunks => "15"
   }, {
     :player_name => "Mason Plumlee",
      :number => "1",
      :shoe => "19",
      :points => "26",
      :rebounds => "12",
      :assists => "6",
      :steals => "3",
      :blocks => "8",
      :slam_dunks => "5"
   }, {
     :player_name => "Jason Terry",
      :number => "31",
      :shoe => "15",
      :points => "19",
      :rebounds => "2",
      :assists => "2",
      :steals => "4",
      :blocks => "11",
      :slam_dunks => "1"
    }
   ]
 },

 :away => {
   :team_name => "Charlotte Hornets",
   :colors => ["Turquoise", "Purple"],
   :players => [
     {
       :player_name => "Jeff Adrien",
      :number => "4",
      :shoe => "18",
      :points => "10",
      :rebounds => "1",
      :assists => "1",
      :steals => "2",
      :blocks => "7",
      :slam_dunks => "2"
     }, {
       :player_name => "Bismak Biyombo",
      :number => "0",
      :shoe => "16",
      :points => "12",
      :rebounds => "4",
      :assists => "7",
      :steals => "7",
      :blocks => "15",
      :slam_dunks => "10"
     }, {
       :player_name => "DeSagna Diop",
      :number => "2",
      :shoe => "14",
      :points => "24",
      :rebounds => "12",
      :assists => "12",
      :steals => "4",
      :blocks => "5",
      :slam_dunks => "5"
     }, {
       :player_name => "Ben Gordon",
      :number => "8",
      :shoe => "15",
      :points => "33",
      :rebounds => "3",
      :assists => "2",
      :steals => "1",
      :blocks => "1",
      :slam_dunks => "0"
     }, {
       :player_name => "Brendan Haywood",
      :number => "33",
      :shoe => "15",
      :points => "6",
      :rebounds => "12",
      :assists => "12",
      :steals => "22",
      :blocks => "5",
      :slam_dunks => "12"
     }
    ]
  }
}
end



puts "___CALL BOTH TMZ PLAYERS & STATS___________"
#___HASH_VALUE_=_TEAMS & PLAYERS & STATS____
def teams_and_players
  teams = game_hash.values
end
puts teams_and_players


# # def get_teams
# #  team = []
# #     game_hash.map do |team| team.fetch[:team_name]
# #     end 
# #   # team.push(team_names.flatten) 
# # end
# # puts get_teams
puts "_____________TEAMS NAMES _______________'\n'"

def team_names
  teams_and_players.map{|team| team.fetch(:team_name)}
end
 puts  team_names



puts "______CALL TEAM BY NAME  ________________"
#CALL EACH TEAM (by name)
def call_team(team_name)
	  game_hash.values.find do |players_info|
	    players_info[:team_name] == team_name
	  end
end

puts call_team("Brooklyn Nets")


puts "__________ALL PLAYERS W STATS________________'\n' "
# #this method return All Players with their stats 
 
def all_players_with_stats
    players = game_hash.values.map do |players| all_players = players[:players]
  end
  players.flatten 
end 
puts all_players_with_stats


puts "__________TEAM COLOR___________________'\n'"
#Get team color by accessing specific team(call_team then team name store in a variable to then use and fetch)

def team_colors(team_name)
get_color = call_team(team_name) { |team_name| team_name.fetch(:team_name) == team_name}
colors = get_color.fetch(:colors)

 end 

 
 puts team_colors("Brooklyn Nets")

#WITHOUT  Iteratting Just accessing 
# def players
#   home_players = game_hash[:home][:players]
#   away_players = game_hash[:away][:players]
#   total_players = home_players + away_players
#   total_players
# end
#____________________________________________

 #ITTERATING WITH FIND (can also use detect)
def num_points_scored(name)
  get_player = all_players_with_stats.find { |player| player.fetch(:player_name) == name }
  get_player.fetch(:points).to_i
  
  # puts "#{name} points: #{points}"
  
end 
puts "__________FIND PLAYER SCORE ______________'\n'"
puts num_points_scored("Brendan Haywood")

puts "__________SHOE SIZE  ______________'\n'"
def shoe_size(name)
    get_shoe = all_players_with_stats.find do |player| player.fetch(:player_name) == name
     end 
    shoe = get_shoe.fetch(:shoe).to_i
    # puts "#{name} shoe size is: #{shoe}"
    # return get_shoe.fetch(:shoe)
end 
puts shoe_size("DeSagna Diop")


puts " _____________Number____________"
def player_numbers(team_name)
   get_number = call_team(team_name)[:players].map { |player_name| player_name.fetch(:number).to_i}
end 
puts player_numbers("Brooklyn Nets")


puts "__________STATS BY NAME________________'\n' "
def player_stats(player_name)
  stats_to_i = []
  get_stats = all_players_with_stats.find do |player| player.fetch(:player_name) == player_name 
    end 
    
   stats =  get_stats.select do |details| details != :player_name
 end 
 stats.each { |k, v| stats[k] = "#{v}".to_i }
 
end 
player_stats("Jeff Adrien")



def big_shoe_rebounds
  
end 

puts "_____SHOE ______"
def biggest_shoe
  all_players_with_stats.max_by { |player_name| player_name.fetch(:shoe)}
end
puts biggest_shoe

puts "______REBOUNDS_____"

def big_shoe_rebounds
  biggest_shoe.fetch(:rebounds).to_i
end 
p big_shoe_rebounds

puts "______LONGEST NAME _____" #COMPARE PLAYERS anme and use sort || look up reduce to see 
  
#longest = []
#players = game_hash.values.map { |team| teams_players = team[:players].flatten.map {|names|names[:player_name] }.sort_by { |name|    longest << name.length }

def player_with_longest_name
 longest = all_players_with_stats.max_by { |length| length.fetch(:player_name)}.sort_by { |name|    longest << name.length }
  longest.max {|name1, name2| name2.length <=> name1.length}
end 
p player_with_longest_name
  
