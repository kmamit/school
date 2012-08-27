class HotelsController < ApplicationController
  # GET /students
  # GET /students.json
  def index
    @hotels = Hotel.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @students }
    end
  end
  def create
    @comment = Comment.new( params[:comment] )

    flash[:notice] = "Comment successfully created" if @comment.save
    respond_with( @comment, :layout => request.xhr? )
  end
end
