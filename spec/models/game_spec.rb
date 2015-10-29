require 'spec_helper'

describe Game do
  describe 'instantiation' do
    let!(:game) { build(:game) }

    it 'instantiates a game' do
      expect(game.class.name).to eq('Game')
    end
  end
end
