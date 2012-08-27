
class StudentphotosController < ApplicationController
  # GET /studentphotos

  # GET /studentphotos.json
respond_to :html, :xml, :json
  def index
    @studentphotos = Studentphoto.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @studentphotos }
    end
  end

  # GET /studentphotos/1
  # GET /studentphotos/1.json
  def show
    @studentphoto = Studentphoto.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @studentphoto }
    end
  end

  # GET /studentphotos/new
  # GET /studentphotos/new.json
  def new
    @studentphoto = Studentphoto.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @studentphoto }
    end
  end

  # GET /studentphotos/1/edit
  def edit
    @studentphoto = Studentphoto.find(params[:id])
  end

  # POST /studentphotos
  # POST /studentphotos.json
  respond_to :html, :js
def create
    @studentphoto = Studentphoto.new( params[:comment] )

    flash[:notice] = "studentphoto successfully created" if @studentphoto.save
    respond_with( @studentphoto, :layout => request.xhr? )
  end

  # PUT /studentphotos/1
  # PUT /studentphotos/1.json
  def update
    @studentphoto = Studentphoto.find(params[:id])

    respond_to do |format|
      if @studentphoto.update_attributes(params[:studentphoto])
        format.html { redirect_to @studentphoto, notice: 'Studentphoto was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @studentphoto.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /studentphotos/1
  # DELETE /studentphotos/1.json
  def destroy
    @studentphoto = Studentphoto.find(params[:id])
    @studentphoto.destroy

    respond_to do |format|
      format.html { redirect_to studentphotos_url }
      format.json { head :no_content }
    end
  end
end
