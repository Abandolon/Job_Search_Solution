require 'rails_helper'

RSpec.describe ShiftDate, type: :model do
  before { create(:job_language) }

  context "presence" do
    it { should validate_presence_of :start_date }
    it { should validate_presence_of :end_date }
    it { is_expected.to belong_to :job }
  end

  context "calculate total hours" do
    let(:shift_date) { create :shift_date, job: create(:job) }

    it "should calculate" do
      expect(shift_date.total_hours).to be > 9
    end
  end
end
