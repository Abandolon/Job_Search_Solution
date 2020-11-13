class JobsController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index show]

  def index
    if params[:query].present?
      results = PgSearch.multisearch(params[:query])
      parse_results(results)
    else
      @jobs = Job.all
    end
  end

  def show
    @job = Job.find(params[:id])
  end

  private

  def parse_results(results)
    @jobs = []
    results.each do |result|
      if result.searchable_type == "Job"
        @jobs << result.searchable
      else
        result.searchable.jobs.each do |job|
          @jobs << job
        end
      end
    end
    @jobs
  end
end
