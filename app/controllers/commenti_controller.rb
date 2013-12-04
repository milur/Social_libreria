class CommentiController < ApplicationController
  # GET /commenti
  # GET /commenti.json
  def index
    @commenti = Commento.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @commenti }
    end
  end

  # GET /commenti/1
  # GET /commenti/1.json
  def show
    @commento = Commento.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @commento }
    end
  end

  # GET /commenti/new
  # GET /commenti/new.json
  def new
    @commento = Commento.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @commento }
    end
  end

  # GET /commenti/1/edit
  def edit
    @commento = Commento.find(params[:id])
  end

  # POST /commenti
  # POST /commenti.json
  def create
    @commento = Commento.new(params[:commento])

    respond_to do |format|
      if @commento.save
        format.html { redirect_to @commento, notice: 'Commento was successfully created.' }
        format.json { render json: @commento, status: :created, location: @commento }
      else
        format.html { render action: "new" }
        format.json { render json: @commento.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /commenti/1
  # PUT /commenti/1.json
  def update
    @commento = Commento.find(params[:id])

    respond_to do |format|
      if @commento.update_attributes(params[:commento])
        format.html { redirect_to @commento, notice: 'Commento was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @commento.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /commenti/1
  # DELETE /commenti/1.json
  def destroy
    @commento = Commento.find(params[:id])
    @commento.destroy

    respond_to do |format|
      format.html { redirect_to commenti_url }
      format.json { head :no_content }
    end
  end
end
