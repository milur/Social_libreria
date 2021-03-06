class CalendariController < ApplicationController
  before_filter :authenticate
  
  def index
    @attivita_rge = Array.new
    @gruppi = current_user.gruppi.select("gruppi.id") #gruppi dell'utente loggato
    @calendari = Calendario.where("gruppo_id IN (?)",@gruppi) #calendari collegati
    @calendario_user =  Calendario.find_by_utente_id(current_user.id) 
    if @calendario_user.present?
      @calendari << @calendario_user
    end
    @date = params[:date] ? Date.parse(params[:date]) : Date.today #data calendario
    if @calendari.present?
         @calendari.each do |attivities|
           attivities.attivita.each do |attivita|
    
              @attivita_rge << attivita
             
           end
           @attivita =  @attivita_rge.group_by(&:data)
           
         end
    end
    
    respond_to do |format|
      format.html 
      format.json { render json: @calendari }
    end
  end
  
  def show
    @calendario = Calendario.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @calendario }
    end
  end

  # GET /calendari/new
  # GET /calendari/new.json
  def new
    @calendario = Calendario.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @calendario }
    end
  end

  # GET /calendari/1/edit
  def edit
    @calendario = Calendario.find(params[:id])
  end

  # POST /calendari
  # POST /calendari.json
  def create
    @calendario = Calendario.new(params[:calendario])

    respond_to do |format|
      if @calendario.save
        format.html { redirect_to @calendario, notice: 'Calendario was successfully created.' }
        format.json { render json: @calendario, status: :created, location: @calendario }
      else
        format.html { render action: "new" }
        format.json { render json: @calendario.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /calendari/1
  # PUT /calendari/1.json
  def update
    @calendario = Calendario.find(params[:id])

    respond_to do |format|
      if @calendario.update_attributes(params[:calendario])
        format.html { redirect_to @calendario, notice: 'Calendario was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @calendario.errors, status: :unprocessable_entity }
      end
    end
  end
  def show_day
    @data = params[:date_day] ? Date.parse(params[:date_day]) : Date.today
    @attivita = params[:attivita] ?  params[:attivita] : nil
    
  end

  # DELETE /calendari/1
  # DELETE /calendari/1.json
  def destroy
    @calendario = Calendario.find(params[:id])
    @calendario.destroy

    respond_to do |format|
      format.html { redirect_to calendari_url }
      format.json { head :no_content }
    end
  end
end
