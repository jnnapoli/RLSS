json.extract! leaderboard, :id, :team, :sun_points, :wed_points, :fri_points, :created_at, :updated_at
json.url leaderboard_url(leaderboard, format: :json)
