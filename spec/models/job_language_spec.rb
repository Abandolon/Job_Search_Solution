require 'rails_helper'

RSpec.describe JobLanguage, type: :model do
  subject { JobLanguage.new }

  context 'with invalid attributes' do
    it { is_expected.not_to be_valid }
  end

  context 'with valid attributes' do
    let(:job) { create(:job) }
    let(:language) { create(:language) }
    let(:job_language) { JobLanguage.new(job: job, language: language) }

    it 'is valid' do
      expect(job_language).to be_valid
    end
  end
end
