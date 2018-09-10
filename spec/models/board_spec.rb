require 'rails_helper'

RSpec.describe Board, type: :model do
  describe 'attributes' do

    it 'Exists' do
      bd = FactoryBot.create(:board)
      expect(bd.exists).to eq(true)
    end

  end
end
