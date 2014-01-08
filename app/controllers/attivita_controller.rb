class AttivitaController < ApplicationController
  before_filter :authenticate, :except => [:index,:show]
  before_filter :auth_user, :only => [:update,:destroy]
  def index
    if current_user.nil?
      @attivita = Attivitum.all
    else
      @attivita = Attivitum.find_all_by_utente_id(current_user.id)
    end
  end

  def show
    @attivitum = Attivitum.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @attivitum }
    end
  end

  def new
    @attivitum = Attivitum.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @attivitum }
    end
  end
  
  
  def edit
    @attivitum = Attivitum.find(params[:id])
  end
  
  def create
    @attivitum = Attivitum.new(params[:attivitum])
    @attivitum.utente_id= current_user.id  
    @calendario_user= Calendario.find_by_utente_id(current_user.id) 
    if params[:gruppi_ids]
            @calendario = Calendario.find_all_by_id(params[:gruppi_ids])
    end
             
    respond_to do |format|
      if @attivitum.save
        if @calendario_user.present?
           @attivitum.calendari << @calendario_user
        end
        if params[:gruppi_ids]
            @attivitum.calendari << @calendario
        end 
        
        format.html { redirect_to @attivitum , notice: 'Attivitum was successfully created.' }
        format.json { render json: @attivitum, status: :created, location: @attivitum }
      else
        format.html { render action: "new" }
        format.json { render json: @attivitum.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    @attivitum = Attivitum.find(params[:id])

    respond_to do |format|
      if @attivitum.update_attributes(params[:attivitum])
        format.html { redirect_to calendari_url, notice: "hai modificato con successo in data #{@attivitum.data.strftime('%b %d %M')}" }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @attivitum.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @attivitum = Attivitum.find(params[:id])
    @attivitum.destroy

    respond_to do |format|
      format.html { redirect_to calendari_url }
      format.json { head :no_content }
    end
  end
  def auth_user
    @attivita = Attivitum.find(params[:id])
    if @attivita.utente_id != current_user.id
      flash[:notice] = 'non ti e permesso editare o cancellare'
      redirect_to calendari_url
    end
  end
end
