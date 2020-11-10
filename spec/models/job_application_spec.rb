require 'rails_helper'

RSpec.describe JobApplication, type: :model do
  subject { JobApplication.new }

  context 'with invalid attributes' do
    it { is_expected.not_to be_valid }
  end

  context 'with valid attributes' do
    let(:job) { create(:job) }
    let(:user) { create(:user) }
    let(:job_application) { JobApplication.new(job: job, user: user) }

    it 'is valid' do
      expect(job_application).to be_valid
    end
  end
end
