
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



# puts "___CALL BOTH TMZ PLAYERS & STATS___________"
# #___HASH_VALUE_=_TEAMS & PLAYERS & STATS____
# def teams_and_players
#   teams = game_hash.values
# end
# puts teams_and_players


# # # def get_teams
# # #  team = []
# # #     game_hash.map do |team| team.fetch[:team_name]
# # #     end 
# # #   # team.push(team_names.flatten) 
# # # end
# # # puts get_teams
# puts "_____________TEAMS NAMES _______________'\n'"

# def team_names
#   teams_and_players.map{|team| team.fetch(:team_name)}
# end
# puts  team_names



# puts "______CALL TEAM BY NAME  ________________"
# #CALL EACH TEAM (by name)
# def call_team(team_name)
# 	  game_hash.values.find do |players_info|
# 	    players_info[:team_name] == team_name
# 	  end
# end

# puts call_team("Brooklyn Nets")


# puts "__________ALL PLAYERS W STATS________________'\n' "
# # #this method return All Players with their stats 
 
# def all_players_with_stats
#     players = game_hash.values.map do |players| all_players = players[:players]
#   end
#   players.flatten 
# end 
# puts all_players_with_stats


# puts "__________TEAM COLOR___________________'\n'"
# #Get team color by accessing specific team(call_team then team name store in a variable to then use and fetch)

# def team_colors(team_name)
# get_color = call_team(team_name) { |team_name| team_name.fetch(:team_name) == team_name}
# # binding.pry
# colors = get_color.fetch(:colors)

# end 

 
# puts team_colors("Brooklyn Nets")
# binding.pry

# #WITHOUT  Iteratting Just accessing 
# # def players
# #   home_players = game_hash[:home][:players]
# #   away_players = game_hash[:away][:players]
# #   total_players = home_players + away_players
# #   total_players
# # end
# #____________________________________________

# #ITTERATING WITH FIND (can also use detect)
# def num_points_scored(name)
#   get_player = all_players_with_stats.find { |player| player.fetch(:player_name) == name }
#   get_player.fetch(:points).to_i
  
#   # puts "#{name} points: #{points}"
  
# end 
# puts "__________FIND PLAYER SCORE ______________'\n'"
# puts num_points_scored("Brendan Haywood")

# puts "__________SHOE SIZE  ______________'\n'"
# def shoe_size(name)
#     get_shoe = all_players_with_stats.find do |player| player.fetch(:player_name) == name
#     end 
#     shoe = get_shoe.fetch(:shoe).to_i
#     # puts "#{name} shoe size is: #{shoe}"
#     # return get_shoe.fetch(:shoe)
# end 
# puts shoe_size("DeSagna Diop")


# puts " _____________Number____________"
# def player_numbers(team_name)
#   get_number = call_team(team_name)[:players].map { |player_name| player_name.fetch(:number).to_i}
# end 
# puts player_numbers("Brooklyn Nets")


# puts "__________STATS BY NAME________________'\n' "
# def player_stats(player_name)
#   stats_to_i = []
#   get_stats = all_players_with_stats.find do |player| player.fetch(:player_name) == player_name 
#     end 
    
#   stats =  get_stats.select do |details| details != :player_name
# end 
# stats.each { |k, v| stats[k] = "#{v}".to_i }
 
# end 
# player_stats("Jeff Adrien")



# def big_shoe_rebounds
  
# end 

# puts "_____SHOE ______"
# def biggest_shoe
#   all_players_with_stats.max_by { |player_name| player_name.fetch(:shoe)}
# end
# puts biggest_shoe

# puts "______REBOUNDS_____"

# def big_shoe_rebounds
#   biggest_shoe.fetch(:rebounds).to_i
# end 
# p big_shoe_rebounds

# puts "______LONGEST NAME _____" #COMPARE PLAYERS anme and use sort || look up reduce to see 
  
# #longest = []
# #players = game_hash.values.map { |team| teams_players = team[:players].flatten.map {|names|names[:player_name] }.sort_by { |name|    longest << name.length }

# def player_with_longest_name
# longest = all_players_with_stats.max_by { |length| length.fetch(:player_name)}.sort_by { |name|    longest << name.length }
#   longest.max {|name1, name2| name2.length <=> name1.length}
# end 
# p player_with_longest_name

puts " ------------ HOME ------------"
def home_team
    game_hash[:home]
end 
# p home_team
puts " ------------ AWAY ------------ "
def away_team
    game_hash[:away]
end 
# p away_team
puts " --------- Team_Names ------------"

  def get_teams_names
      teams_names = []
      teams_names.flatten << game_hash.values.each  do |teams, teams_info| teams_names <<  teams[:team_name] 
    end   
   
    teams_names
end 
p get_teams_names

puts " --------- Players_Stats------------"
def get_players_n_stats
      home_players = home_team[:players]
      away_players = away_team[:players]
      players_n_stats = Array.new(home_players.concat(away_players))
end 
p get_players_n_stats


puts " --------- Players_Names & Total------------"
def get_players_names
    count = 0 #counter
    ar = [] 

      get_players_n_stats.map do |  players| 
      p ar << players[:player_name] 
      end 
      a =  Array.new() # array to add index number to players 
    ar.map.with_index(1) do |name, index| a <<
    "#{index}: #{name}"
      # hash[item] = index
    end
      # ar.length # lets count players total
      i = 0
      while i < ar.length 
      count = count + 1
      i +=1
      end 

    puts "Players = #{count} Players '\n' "
end 


# puts " --------- GET A PLAYER withoud method ------------"
def get_a_player(player_name)
    player = []
    get_players_n_stats.reject do |name| 
      unless name[:player_name] == player_name
      player << name
      end 
  end 
end 
p get_a_player("Brendan Haywood")

 puts " --------- GET SHOE ------------"

def get_shoe_size(name)
# 1 ************ 1 solution WITH using get_player method & indexing
player = get_a_player(name)
(player[0][:shoe])

# # 2 ***** ***** with ITERATOR EACH & Indexing
# player = get_a_player(name)
#     player[0].each do |key, value|
#     p value 
#     unless key != :shoe # if key == :shoe
#           ret = "#{name} shoe size is #{value}"
#     return ret
#       end 
#     end 

# 3 ************ with EACH and COMPARISON
# players = game_hash[:home][:players].concat(game_hash[:away][:players])
# #returns [{player_name: ....}] in hash inside an array 
#     players.each do |key, details| key
#     # p key
#         #key returns {player_name} and details :are nil beacause in object
#         # p "DETAILS"
#         # p players
#         # p "END DETAILS"
#         players.each do | player| 
#           if player[:player_name] == name
#           return  player[:shoe]
          
#           end 
#         end 
#     end 
end 
p get_shoe_size("Brendan Haywood")


puts " --------- GET TEAM COLORS ------------"
def team_colors(team_name)

   #TEAMS: hash values
   #TEAM_NAMES: hash values find and fetch
   #GET_COLORS: TEAM_NAME.fetch colors
   def get_team(team_name) 
   team_name = game_hash.values.find do |home_or_away|    home_or_away.fetch(:team_name) == team_name 
   end   
end
  # team = get_team(team_name)
  # team.fetch(:colors)
end 

# end 
p team_colors("Charlotte Hornets")


def teams 
game_hash.values 
end 
# teams
puts " --------- GET TEAM NAMES  ------------"
def get_teams_names
game_hash.values.map { |team| team.fetch(:team_name)}
end 
# p get_teams_names


puts " --------- GET  COLORS ------------"
def get_teams_colors(team_name)
# team_name = game_hash.values.find do |home_or_away|    home_or_away.fetch(:team_name) == team_name 
#    end  
#    team_name.fetch(:colors)
   # SHORT CALLING GET TEAM
 team = get_team(team_name)
 team.fetch(:colors)
end
# p get_teams_colors("Charlotte Hornets") 

puts " --------- GET TEAM  ------------"

 def get_the_team(team_name) 
     teams.find { |team| team.fetch(:team_name) == team_name }
end # 
# p get_the_team("Charlotte Hornets") 
puts " --------- PLAYER NUMBER  ------------"
def player_numbers(team_name)
    get_the_team(team_name)[:players].map { |player_name| player_name.fetch(:number) }
end
p player_numbers("Charlotte Hornets")

puts " --------- PLAYER STATS  ------------"
def get_player_stats(player_name)
    # ***** Solution 1 ******
    player = get_a_player(player_name)[0]
end 
p get_player_stats("Bismak Biyombo")

puts " --------- BIGGEST SHOE SIZE ------------"
 
def bigest_shoe
  shoe_size- BIGGEST SHOE REBOUNDS ------------"

def big_shoe_rebounds
# a = bigest_shoe.map do |att , val| 
#   val if att == :player_name
# end 
a = bigest_shoe.each  do |att , val | 
      if att == :player_name
        p " #{val} Rebounds:"
      end 
    
   end 

 b = bigest_shoe.fetch(:rebounds).to_i
end 
p big_shoe_rebounds

p "------------ SCORE BY NAME --------------"
def num_points_scored(name) 
    player = get_a_player(name)
    # player.fetch(:points)
    player[0].fetch(:points).to_i

end
p num_points_scored("DeSagna Diop") 

  p "------------ MOST SCORED POINTS--------------"
def most_points_scored
    players = game_hash[:home][:players].concat(game_hash[:away][:players])
    players.max_by {|player| player[:points]}
    # binding.pry

end 
p most_points_scored



    #MAX BY WORKS WELL when testing here.
# students = [ { name: "Mary Jones", test_score: 80, sport: "soccer" }, { name: "Bob Kelly", test_score: 95, sport: "basketball" }, { name: "Kate Saunders", test_score: 99, sport: "hockey" }, { name: "Pete Dunst", test_score: 88, sport: "football" } ]

# students.max_by{|k| k[:test_score] }
# # => {:name=>"Kate Saunders", :test_score=>99, :sport=>"hockey"}


  
