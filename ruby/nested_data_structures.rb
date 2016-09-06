soccer_teams = {
    team_1: {
        name: 'Tornadoes',
        team_info: {
            total_players: 12,
            total_coaches: 2,
            games_won: 2,
            games_lost: 1,
            games_tied: 1
        },
        coaches: [
            "Steve Jones", 
            "Jamie Nace",
        ]
    },
    team_2: {
        name: 'Cyclones',
        team_info: {
            total_players: 13,
            total_coaches: 3,
            games_won: 4,
            games_lost: 0,
            games_tied: 0
        },
        coaches: [
            "Allison Carnes", 
            "Noel Steves",
            "David Lee",
        ]
    },
    
    team_3: {
        name: 'Hurricanes',
        team_info: {
            total_players: 10,
            total_coaches: 1,
            games_won: 0,
            games_lost: 3,
            games_tied: 1
        },
        coaches: [
            "Rick Mann", 
        ]
    }
}


puts soccer_teams[:team_1][:name]
puts soccer_teams[:team_3][:name]
puts soccer_teams[:team_2][:coaches][0]
puts soccer_teams[:team_3][:coaches]
puts soccer_teams[:team_1][:coaches].reverse
puts soccer_teams[:team_3][:team_info][:games_tied]
puts soccer_teams[:team_3][:team_info][:games_won]
puts soccer_teams[:team_1][:team_info][:total_players]