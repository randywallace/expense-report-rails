class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :authenticate_user!

  # GET /
  def index
    @employers = Employer.all

    respond_to do |format|  
      format.html 
    end
  end
end

