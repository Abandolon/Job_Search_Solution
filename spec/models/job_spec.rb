require 'rails_helper'

RSpec.describe Job, type: :model do
  context "validations" do
    subject { create :job }

    context "presence" do
      it { should validate_presence_of :title }
      it { should validate_presence_of :salary }
    end

    context "uniqueness" do
      it { should validate_uniqueness_of(:title) }
    end
  end

  context 'calculates salary' do
    let(:job) { create :job }
    before do
      3.times do
        create(:shift_date, job: job)
      end
    end

    it 'displays total_salary' do
      expect(job.total_salary).to be > 72
    end
  end
end
