class UtentiController < ApplicationController
  # GET /utenti
  # GET /utenti.json
  def index
    @utenti = Utente.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @utenti }
    end
  end

  # GET /utenti/1
  # GET /utenti/1.json
  def show
    @utente = Utente.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @utente }
    end
  end

  # GET /utenti/new
  # GET /utenti/new.json
  def new
    @utente = Utente.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @utente }
    end
  end

  # GET /utenti/1/edit
  def edit
    @utente = Utente.find(params[:id])
  end

  # POST /utenti
  # POST /utenti.json
  def create
    @utente = Utente.new(params[:utente])

    respond_to do |format|
      if @utente.save
        format.html { redirect_to @utente, notice: 'Utente was successfully created.' }
        format.json { render json: @utente, status: :created, location: @utente }
      else
        format.html { render action: "new" }
        format.json { render json: @utente.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /utenti/1
  # PUT /utenti/1.json
  def update
    @utente = Utente.find(params[:id])

    respond_to do |format|
      if @utente.update_attributes(params[:utente])
        format.html { redirect_to @utente, notice: 'Utente was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @utente.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /utenti/1
  # DELETE /utenti/1.json
  def destroy
    @utente = Utente.find(params[:id])
    @utente.destroy

    respond_to do |format|
      format.html { redirect_to utenti_url }
      format.json { head :no_content }
    end
  end
end
