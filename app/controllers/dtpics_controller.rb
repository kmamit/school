class DtpicsController < ApplicationController
  # GET /dtpics
  # GET /dtpics.json
  def index
    @dtpics = Dtpic.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @dtpics }
    end
  end

  # GET /dtpics/1
  # GET /dtpics/1.json
  def show
    @dtpic = Dtpic.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @dtpic }
    end
  end

  # GET /dtpics/new
  # GET /dtpics/new.json
  def new
    @dtpic = Dtpic.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @dtpic }
    end
  end

  # GET /dtpics/1/edit
  def edit
    @dtpic = Dtpic.find(params[:id])
  end

  # POST /dtpics
  # POST /dtpics.json
  def create
    @dtpic = Dtpic.new(params[:dtpic])

    respond_to do |format|
      if @dtpic.save
        format.html { redirect_to @dtpic, notice: 'Dtpic was successfully created.' }
        format.json { render json: @dtpic, status: :created, location: @dtpic }
      else
        format.html { render action: "new" }
        format.json { render json: @dtpic.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /dtpics/1
  # PUT /dtpics/1.json
  def update
    @dtpic = Dtpic.find(params[:id])

    respond_to do |format|
      if @dtpic.update_attributes(params[:dtpic])
        format.html { redirect_to @dtpic, notice: 'Dtpic was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @dtpic.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dtpics/1
  # DELETE /dtpics/1.json
  def destroy
    @dtpic = Dtpic.find(params[:id])
    @dtpic.destroy

    respond_to do |format|
      format.html { redirect_to dtpics_url }
      format.json { head :no_content }
    end
  end
end
