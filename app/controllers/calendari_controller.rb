class CalendariController < ApplicationController
  # GET /calendari
  # GET /calendari.json
  def index
    @calendari = Calendario.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @calendari }
    end
  end

  # GET /calendari/1
  # GET /calendari/1.json
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
