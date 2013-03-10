class TenuresController < ApplicationController
  # GET /tenures
  # GET /tenures.json
  def index
    @tenures = Tenure.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @tenures }
    end
  end

  # GET /tenures/1
  # GET /tenures/1.json
  def show
    @tenure = Tenure.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @tenure }
    end
  end

  # GET /tenures/new
  # GET /tenures/new.json
  def new
    @tenure = Tenure.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @tenure }
    end
  end

  # GET /tenures/1/edit
  def edit
    @tenure = Tenure.find(params[:id])
  end

  # POST /tenures
  # POST /tenures.json
  def create
    @tenure = Tenure.new(params[:tenure])

    respond_to do |format|
      if @tenure.save
        format.html { redirect_to @tenure, notice: 'Tenure was successfully created.' }
        format.json { render json: @tenure, status: :created, location: @tenure }
      else
        format.html { render action: "new" }
        format.json { render json: @tenure.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /tenures/1
  # PUT /tenures/1.json
  def update
    @tenure = Tenure.find(params[:id])

    respond_to do |format|
      if @tenure.update_attributes(params[:tenure])
        format.html { redirect_to @tenure, notice: 'Tenure was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @tenure.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tenures/1
  # DELETE /tenures/1.json
  def destroy
    @tenure = Tenure.find(params[:id])
    @tenure.destroy

    respond_to do |format|
      format.html { redirect_to tenures_url }
      format.json { head :no_content }
    end
  end
end
