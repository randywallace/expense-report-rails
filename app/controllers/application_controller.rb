class ApplicationController < ActionController::Base
  protect_from_forgery

  # GET /
  def index
    @employers = Employer.all
    @timecharts = Timechart.all

    respond_to do |format|  
      format.html 
    end
  end
end

