class BodiesController < ApplicationController
  # GET /bodies
  # GET /bodies.json
  def index
    @bodies = Body.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @bodies }
    end
  end

  # GET /bodies/1
  # GET /bodies/1.json
  def show
    @body = Body.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @body }
    end
  end

  # GET /bodies/new
  # GET /bodies/new.json
  def new
    @body = Body.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @body }
    end
  end

  # GET /bodies/1/edit
  def edit
    @body = Body.find(params[:id])
  end

  # POST /bodies
  # POST /bodies.json
  def create
    @body = Body.new(params[:body])

    respond_to do |format|
      if @body.save
        format.html { redirect_to @body, notice: 'Body was successfully created.' }
        format.json { render json: @body, status: :created, location: @body }
      else
        format.html { render action: "new" }
        format.json { render json: @body.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /bodies/1
  # PUT /bodies/1.json
  def update
    @body = Body.find(params[:id])

    respond_to do |format|
      if @body.update_attributes(params[:body])
        format.html { redirect_to @body, notice: 'Body was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @body.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bodies/1
  # DELETE /bodies/1.json
  def destroy
    @body = Body.find(params[:id])
    @body.destroy

    respond_to do |format|
      format.html { redirect_to bodies_url }
      format.json { head :no_content }
    end
  end
end
