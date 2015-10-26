FactoryGirl.define do
  factory :piece do
    game_id 1
    player_id 1
    piece_type "Knight"
    current_position_x 1
    current_position_y 1
  end
end
