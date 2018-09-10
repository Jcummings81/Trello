require 'rails_helper'

RSpec.describe List, type: :model do
  describe 'attributes' do

    it 'Exists' do
      bd = FactoryBot.create(:board)
      expect(bd.exists).to eq(true)
    end

  end
end
