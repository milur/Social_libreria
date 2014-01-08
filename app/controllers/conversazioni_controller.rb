class ConversazioniController < ApplicationController
  # GET /conversazioni
  # GET /conversazioni.json
  def index
    @conversazioni = Conversazione.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @conversazioni }
    end
  end

  # GET /conversazioni/1
  # GET /conversazioni/1.json
  def show
    @conversazione = Conversazione.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @conversazione }
    end
  end

  # GET /conversazioni/new
  # GET /conversazioni/new.json
  def new
    @conversazione = Conversazione.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @conversazione }
    end
  end

  # GET /conversazioni/1/edit
  def edit
    @conversazione = Conversazione.find(params[:id])
  end

  # POST /conversazioni
  # POST /conversazioni.json
  def create
    @conversazione = Conversazione.new(params[:conversazione])

    respond_to do |format|
      if @conversazione.save
        format.html { redirect_to @conversazione, notice: 'Conversazione was successfully created.' }
        format.json { render json: @conversazione, status: :created, location: @conversazione }
      else
        format.html { render action: "new" }
        format.json { render json: @conversazione.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /conversazioni/1
  # PUT /conversazioni/1.json
  def update
    @conversazione = Conversazione.find(params[:id])

    respond_to do |format|
      if @conversazione.update_attributes(params[:conversazione])
        format.html { redirect_to @conversazione, notice: 'Conversazione was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @conversazione.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /conversazioni/1
  # DELETE /conversazioni/1.json
  def destroy
    @conversazione = Conversazione.find(params[:id])
    @conversazione.destroy

    respond_to do |format|
      format.html { redirect_to conversazioni_url }
      format.json { head :no_content }
    end
  end
end
