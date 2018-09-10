require 'rails_helper'

RSpec.describe Board, type: :model do
  describe 'attributes' do

    it 'Exists' do
      expect(FactoryBot.create(:board).exists).to eq(true) 
     end
      
    end
  end
