FactoryGirl.define do
  factory :game do
    game_name "Test Game"
    black_player_id 1
    white_player_id 2
    winner_id 1
    current_turn 1
  end
end