require 'rails_helper'

RSpec.describe ArticlePolicy do
  subject {described_class}
  let(:non_subscriber) {FactoryBot.create(:user, subscriber: false)}
  let(:subscriber) {FactoryBot.create(:user, subscriber: true)}
  let(:article) {FactoryBot.create(:article)}


  permissions :show? do
    it {is_expected.not_to permit(non_subscriber, article)}
    it {is_expected.to permit(subscriber, article)}
  end

  permissions :index? do
    it {is_expected.to permit(non_subscriber, article)}
    it {is_expected.to permit(subscriber, article)}
  end


end
