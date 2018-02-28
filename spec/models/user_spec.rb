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

  describe 'instance methods' do
    describe '#subscriber?' do
      let(:non_subscriber) { FactoryBot.create(:user, subscriber: false)}
      let(:subscriber) { FactoryBot.create(:user, subscriber: true)}

      it 'returns true if subscriber attribute is set to true' do
        expect(subscriber.subscriber?).to eq true
      end

      it 'returns false if subscriber attribute is set to false' do
        expect(non_subscriber.subscriber?).to eq false
      end

    end
  end
end
