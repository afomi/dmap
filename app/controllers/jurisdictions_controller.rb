class JurisdictionsController < ApplicationController
  # GET /jurisdictions
  # GET /jurisdictions.json
  def index
    @jurisdictions = Jurisdiction.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @jurisdictions }
    end
  end

  # GET /jurisdictions/1
  # GET /jurisdictions/1.json
  def show
    @jurisdiction = Jurisdiction.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @jurisdiction }
    end
  end

  # GET /jurisdictions/new
  # GET /jurisdictions/new.json
  def new
    @jurisdiction = Jurisdiction.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @jurisdiction }
    end
  end

  # GET /jurisdictions/1/edit
  def edit
    @jurisdiction = Jurisdiction.find(params[:id])
  end

  # POST /jurisdictions
  # POST /jurisdictions.json
  def create
    @jurisdiction = Jurisdiction.new(params[:jurisdiction])

    respond_to do |format|
      if @jurisdiction.save
        format.html { redirect_to @jurisdiction, notice: 'Jurisdiction was successfully created.' }
        format.json { render json: @jurisdiction, status: :created, location: @jurisdiction }
      else
        format.html { render action: "new" }
        format.json { render json: @jurisdiction.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /jurisdictions/1
  # PUT /jurisdictions/1.json
  def update
    @jurisdiction = Jurisdiction.find(params[:id])

    respond_to do |format|
      if @jurisdiction.update_attributes(params[:jurisdiction])
        format.html { redirect_to @jurisdiction, notice: 'Jurisdiction was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @jurisdiction.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /jurisdictions/1
  # DELETE /jurisdictions/1.json
  def destroy
    @jurisdiction = Jurisdiction.find(params[:id])
    @jurisdiction.destroy

    respond_to do |format|
      format.html { redirect_to jurisdictions_url }
      format.json { head :no_content }
    end
  end
end
