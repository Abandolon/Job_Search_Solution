require 'rails_helper'

RSpec.describe Job, type: :model do
  context "validations" do
    before { create(:job) }

    context "presence" do
      it { should validate_presence_of :title }
      it { should validate_presence_of :salary }
    end

    context "uniqueness" do
      it { should validate_uniqueness_of(:title) }
    end
  end
end
