require 'rails_helper'

RSpec.describe User, type: :model do
  context "validations" do
    before { create(:user) }

    context "presence" do
      it { should validate_presence_of :email }
      it { should validate_presence_of :password }
    end

    context "uniqueness" do
      it { should validate_uniqueness_of(:email).case_insensitive }
    end
  end
end
