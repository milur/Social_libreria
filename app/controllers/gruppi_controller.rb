class GruppiController < ApplicationController
  before_filter :authenticate, :except => [:index,:show]
  before_filter :auth_user, :only => [:adding_group]
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
    @user = Utente.find(current_user.id)
    @gruppo = Gruppo.new(params[:gruppo])
    respond_to do |format|
      if @gruppo.save
        @gruppo.utenti <<  @user 
        @calendario = Calendario.create(:descrizione => "calendario del gruppo #{@gruppo.nome}", :gruppo_id => @gruppo.id)
        format.html { redirect_to @gruppo, notice: 'Gruppo creato correttamente' }
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
  
  def adding_group
    @user = Utente.find(current_user.id)
    @gruppo = Gruppo.find(params[:gruppo_id])
    respond_to do |format|
      if @gruppo
        @gruppo.utenti <<  @user 
        format.html { redirect_to root_url, notice: 'ti sei aggiunto correttamente al gruppo' }
      else
        format.html { render action: "index" ,notice: 'spiacente utente non aggiunto'}
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
  # filtro per non aggiungere due volte lo stesso user
  def auth_user
    @gruppo = Gruppo.find(params[:gruppo_id])
    if @gruppo.utenti.exists?(current_user)
      flash[:notice] = 'gruppo a cui sei gia aggiunto'
      redirect_to root_url
    end
  end
  def listing_utenti
    @gruppo = Gruppo.find(params[:gruppo_id])
    @utenti = @gruppo.utenti
  end
  
end
