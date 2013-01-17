class TimechartsController < ApplicationController
  # GET /timecharts
  # GET /timecharts.json
  def index
    @timecharts = Timechart.find(:all, order: "stop_time DESC")

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @timecharts }
    end
  end

  # GET /timecharts/1
  # GET /timecharts/1.json
  def show
    @timechart = Timechart.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @timechart }
    end
  end

  # GET /timecharts/new
  # GET /timecharts/new.json
  def new
    @timechart = Timechart.new

    respond_to do |format|
      unless Employer.find(:all).size == 0
        format.html # new.html.erb
        format.json { render json: @timechart }
      else
        format.html { redirect_to '/employers/new', alert: 'An Employer Must be created first!' }
        format.json { render json: @timechart.errors, status: :unprocessable_entity }
      end
    end
  end

  # GET /timecharts/1/edit
  def edit
    @timechart = Timechart.find(params[:id])
  end

  # POST /timecharts
  # POST /timecharts.json
  def create
    @timechart = Timechart.new(params[:timechart])

    respond_to do |format|
      if @timechart.save
        format.html { redirect_to @timechart, notice: 'Timechart was successfully created.' }
        format.json { render json: @timechart, status: :created, location: @timechart }
      else
        format.html { render action: "new" }
        format.json { render json: @timechart.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /timecharts/1
  # PUT /timecharts/1.json
  def update
    @timechart = Timechart.find(params[:id])

    respond_to do |format|
      if @timechart.update_attributes(params[:timechart])
        format.html { redirect_to @timechart, notice: 'Timechart was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @timechart.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /timecharts/1
  # DELETE /timecharts/1.json
  def destroy
    @timechart = Timechart.find(params[:id])
    @timechart.destroy

    respond_to do |format|
      format.html { redirect_to timecharts_url }
      format.json { head :no_content }
    end
  end
end
