class GruppiController < ApplicationController
  # GET /gruppi
  # GET /gruppi.json
  def index
    @gruppi = Gruppo.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @gruppi }
    end
  end

  # GET /gruppi/1
  # GET /gruppi/1.json
  def show
    @gruppo = Gruppo.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @gruppo }
    end
  end

  # GET /gruppi/new
  # GET /gruppi/new.json
  def new
    @gruppo = Gruppo.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @gruppo }
    end
  end

  # GET /gruppi/1/edit
  def edit
    @gruppo = Gruppo.find(params[:id])
  end

  # POST /gruppi
  # POST /gruppi.json
  def create
    @gruppo = Gruppo.new(params[:gruppo])

    respond_to do |format|
      if @gruppo.save
        format.html { redirect_to @gruppo, notice: 'Gruppo was successfully created.' }
        format.json { render json: @gruppo, status: :created, location: @gruppo }
      else
        format.html { render action: "new" }
        format.json { render json: @gruppo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /gruppi/1
  # PUT /gruppi/1.json
  def update
    @gruppo = Gruppo.find(params[:id])

    respond_to do |format|
      if @gruppo.update_attributes(params[:gruppo])
        format.html { redirect_to @gruppo, notice: 'Gruppo was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @gruppo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /gruppi/1
  # DELETE /gruppi/1.json
  def destroy
    @gruppo = Gruppo.find(params[:id])
    @gruppo.destroy

    respond_to do |format|
      format.html { redirect_to gruppi_url }
      format.json { head :no_content }
    end
  end
end
