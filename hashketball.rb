def game_hash
  hash = {
    :home => {
      team_name: "Brooklyn Nets",
      colors: ["Black", "White"],
      players: {
        "Alan Anderson" => {number: 0, shoe: 16, points: 22, rebounds: 12, assists: 12, steals: 3, blocks: 1, slam_dunks: 1},
        "Reggie Evans" => {number: 30, shoe: 14, points: 12, rebounds: 12, assists: 12, steals: 12, blocks: 12, slam_dunks: 7},
        "Brook Lopez" => {number: 11, shoe: 17, points: 17, rebounds: 19, assists: 10, steals:3, blocks: 1, slam_dunks: 15},
        "Mason Plumlee" => {number: 1, shoe: 19, points: 26, rebounds: 12, assists: 6, steals: 3, blocks: 8, slam_dunks: 5},
        "Jason Terry" => {number: 31, shoe: 15, points: 19, rebounds: 2, assists: 2, steals: 4, blocks: 11, slam_dunks: 1}
      }
    },
    :away => {
      team_name: "Charlotte Hornets",
      colors: ["Turquoise", "Purple"],
      players: {
<<<<<<< HEAD
        "Jeff Adrien" => {number: 4, shoe: 18, points: 10, rebounds: 1, assists: 1, steals: 2, blocks: 7, slam_dunks: 2},
=======
        "Jeff Adrien" => {number: 4, shoe: 18, points: 10, rebounds: 1, assists: 2, steals: 2, blocks: 7, slam_dunks: 2},
>>>>>>> 9a584f8f7754d0c50131e779e3197be3a04b8d14
        "Bismak Biyombo" => {number: 0, shoe: 16, points: 12, rebounds: 4, assists: 7, steals: 7, blocks: 15, slam_dunks: 10},
        "DeSagna Diop" => {number: 2, shoe: 14, points: 24, rebounds: 12, assists: 12, steals: 4, blocks: 5, slam_dunks: 5},
        "Ben Gordon" => {number: 8, shoe: 15, points: 33, rebounds: 3, assists: 2, steals: 1, blocks: 1, slam_dunks: 0},
        "Brendan Haywood" => {number: 33, shoe: 15, points: 6, rebounds: 12, assists: 12, steals: 22, blocks: 5, slam_dunks: 12}
      }
    }
  }
end

<<<<<<< HEAD
def players
  players = game_hash[:home][:players].merge(game_hash[:away][:players])
end

def teams
  game_hash.values
end

def num_points_scored(player)
  players[player][:points]
end

def shoe_size(player)
  players[player][:shoe]
end

def team_colors(team)
  game_hash.map {|side, categories| return categories[:colors] if categories[:team_name] == team}
end

def team_names
  game_hash.map { |side, categories| categories[:team_name]}
end

def player_numbers(team)
  game_hash.map { |side, categories| categories[:team_name] == team ? categories[:players].values.map {|k, v| k[:number] } : nil }.compact.flatten
end

def player_stats(player)
  players[player]
end

def big_shoe_rebounds
  players.sort_by { |name, stats| stats[:shoe] }[0][1][:rebounds]
end

def num_points_scored(player)
  game_hash.each { |team, categories| categories.each { |type, players| players.each { |name, stats| return stats[:points] if name == player} } }

end

def most_points_scored
  players.sort_by { |name, stats| stats[:points]}.last.first
end

def winning_team
  home = game_hash[:home][:players].map {|name, stats| stats[:points]}.reduce(:+)
  away = game_hash[:away][:players].map {|name, stats| stats[:points]}.reduce(:+)
  home > away ? game_hash[:home][:team_name] : game_hash[:away][:team_name]
end

def player_with_longest_name
  players.sort_by {|name, stats| name.length}.last.first
end

def long_name_steals_a_ton?
  most_steals = players.sort_by {|name, stats| stats[:steals]}.last.first
  most_steals == player_with_longest_name
end
