class PartecipantesController < ApplicationController
  # GET /partecipantes
  # GET /partecipantes.json
  def index
    @partecipantes = Partecipante.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @partecipantes }
    end
  end

  # GET /partecipantes/1
  # GET /partecipantes/1.json
  def show
    @partecipante = Partecipante.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @partecipante }
    end
  end

  # GET /partecipantes/new
  # GET /partecipantes/new.json
  def new
    @partecipante = Partecipante.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @partecipante }
    end
  end

  # GET /partecipantes/1/edit
  def edit
    @partecipante = Partecipante.find(params[:id])
  end

  # POST /partecipantes
  # POST /partecipantes.json
  def create
    @partecipante = Partecipante.new(params[:partecipante])

    respond_to do |format|
      if @partecipante.save
        format.html { redirect_to @partecipante, notice: 'Partecipante was successfully created.' }
        format.json { render json: @partecipante, status: :created, location: @partecipante }
      else
        format.html { render action: "new" }
        format.json { render json: @partecipante.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /partecipantes/1
  # PUT /partecipantes/1.json
  def update
    @partecipante = Partecipante.find(params[:id])

    respond_to do |format|
      if @partecipante.update_attributes(params[:partecipante])
        format.html { redirect_to @partecipante, notice: 'Partecipante was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @partecipante.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /partecipantes/1
  # DELETE /partecipantes/1.json
  def destroy
    @partecipante = Partecipante.find(params[:id])
    @partecipante.destroy

    respond_to do |format|
      format.html { redirect_to partecipantes_url }
      format.json { head :no_content }
    end
  end
end
