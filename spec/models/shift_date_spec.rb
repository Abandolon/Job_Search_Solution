require 'rails_helper'

RSpec.describe ShiftDate, type: :model do
  before { create(:job_language) }

  context "presence" do
    it { should validate_presence_of :start_date }
    it { should validate_presence_of :end_date }
    it { is_expected.to belong_to :job }
  end
end
