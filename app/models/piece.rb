# model for chess pieces
class Piece < ActiveRecord::Base
  belongs_to :game
  belongs_to :player
end
