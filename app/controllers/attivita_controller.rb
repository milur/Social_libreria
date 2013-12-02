class AttivitaController < ApplicationController
  # GET /attivita
  # GET /attivita.json
  def index
    @attivita = Attivitum.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @attivita }
    end
  end

  # GET /attivita/1
  # GET /attivita/1.json
  def show
    @attivitum = Attivitum.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @attivitum }
    end
  end

  # GET /attivita/new
  # GET /attivita/new.json
  def new
    @attivitum = Attivitum.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @attivitum }
    end
  end

  # GET /attivita/1/edit
  def edit
    @attivitum = Attivitum.find(params[:id])
  end

  # POST /attivita
  # POST /attivita.json
  def create
    @attivitum = Attivitum.new(params[:attivitum])

    respond_to do |format|
      if @attivitum.save
        format.html { redirect_to @attivitum, notice: 'Attivitum was successfully created.' }
        format.json { render json: @attivitum, status: :created, location: @attivitum }
      else
        format.html { render action: "new" }
        format.json { render json: @attivitum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /attivita/1
  # PUT /attivita/1.json
  def update
    @attivitum = Attivitum.find(params[:id])

    respond_to do |format|
      if @attivitum.update_attributes(params[:attivitum])
        format.html { redirect_to @attivitum, notice: 'Attivitum was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @attivitum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /attivita/1
  # DELETE /attivita/1.json
  def destroy
    @attivitum = Attivitum.find(params[:id])
    @attivitum.destroy

    respond_to do |format|
      format.html { redirect_to attivita_url }
      format.json { head :no_content }
    end
  end
end
