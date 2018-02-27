require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'Factory' do
    it 'is valid' do
      expect(FactoryBot.create(:user)).to be_valid
    end
  end

  describe 'Database table' do
    it {is_expected.to have_db_column :email}
    it {is_expected.to have_db_column :encrypted_password}

  end
end
