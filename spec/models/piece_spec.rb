require 'spec_helper'

describe Piece do
  describe 'instantiation' do
      let!(:piece) { build(:piece) }

      it 'instantiates a piece' do
        expect(piece.class.name).to eq("Piece")
      end
    end
  end