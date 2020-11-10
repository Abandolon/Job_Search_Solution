require 'rails_helper'

RSpec.describe Language, type: :model do
  context "validations" do
    before { create(:language) }

    context "presence" do
      it { should validate_presence_of :name_eng }
      it { should validate_presence_of :name_deu }
    end

    context "uniqueness" do
      it { should validate_uniqueness_of :name_eng }
      it { should validate_uniqueness_of :name_deu }
    end
  end
end
