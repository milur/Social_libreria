class PartecipantiGruppiController < ApplicationController
  # GET /partecipanti_gruppi
  # GET /partecipanti_gruppi.json
  def index
    @partecipanti_gruppi = PartecipantiGruppo.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @partecipanti_gruppi }
    end
  end

  # GET /partecipanti_gruppi/1
  # GET /partecipanti_gruppi/1.json
  def show
    @partecipanti_gruppo = PartecipantiGruppo.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @partecipanti_gruppo }
    end
  end

  # GET /partecipanti_gruppi/new
  # GET /partecipanti_gruppi/new.json
  def new
    @partecipanti_gruppo = PartecipantiGruppo.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @partecipanti_gruppo }
    end
  end

  # GET /partecipanti_gruppi/1/edit
  def edit
    @partecipanti_gruppo = PartecipantiGruppo.find(params[:id])
  end

  # POST /partecipanti_gruppi
  # POST /partecipanti_gruppi.json
  def create
    @partecipanti_gruppo = PartecipantiGruppo.new(params[:partecipanti_gruppo])

    respond_to do |format|
      if @partecipanti_gruppo.save
        format.html { redirect_to @partecipanti_gruppo, notice: 'Partecipanti gruppo was successfully created.' }
        format.json { render json: @partecipanti_gruppo, status: :created, location: @partecipanti_gruppo }
      else
        format.html { render action: "new" }
        format.json { render json: @partecipanti_gruppo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /partecipanti_gruppi/1
  # PUT /partecipanti_gruppi/1.json
  def update
    @partecipanti_gruppo = PartecipantiGruppo.find(params[:id])

    respond_to do |format|
      if @partecipanti_gruppo.update_attributes(params[:partecipanti_gruppo])
        format.html { redirect_to @partecipanti_gruppo, notice: 'Partecipanti gruppo was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @partecipanti_gruppo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /partecipanti_gruppi/1
  # DELETE /partecipanti_gruppi/1.json
  def destroy
    @partecipanti_gruppo = PartecipantiGruppo.find(params[:id])
    @partecipanti_gruppo.destroy

    respond_to do |format|
      format.html { redirect_to partecipanti_gruppi_url }
      format.json { head :no_content }
    end
  end
end
