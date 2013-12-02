class MessaggiController < ApplicationController
  # GET /messaggi
  # GET /messaggi.json
  def index
    @messaggi = Messaggio.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @messaggi }
    end
  end

  # GET /messaggi/1
  # GET /messaggi/1.json
  def show
    @messaggio = Messaggio.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @messaggio }
    end
  end

  # GET /messaggi/new
  # GET /messaggi/new.json
  def new
    @messaggio = Messaggio.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @messaggio }
    end
  end

  # GET /messaggi/1/edit
  def edit
    @messaggio = Messaggio.find(params[:id])
  end

  # POST /messaggi
  # POST /messaggi.json
  def create
    @messaggio = Messaggio.new(params[:messaggio])

    respond_to do |format|
      if @messaggio.save
        format.html { redirect_to @messaggio, notice: 'Messaggio was successfully created.' }
        format.json { render json: @messaggio, status: :created, location: @messaggio }
      else
        format.html { render action: "new" }
        format.json { render json: @messaggio.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /messaggi/1
  # PUT /messaggi/1.json
  def update
    @messaggio = Messaggio.find(params[:id])

    respond_to do |format|
      if @messaggio.update_attributes(params[:messaggio])
        format.html { redirect_to @messaggio, notice: 'Messaggio was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @messaggio.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /messaggi/1
  # DELETE /messaggi/1.json
  def destroy
    @messaggio = Messaggio.find(params[:id])
    @messaggio.destroy

    respond_to do |format|
      format.html { redirect_to messaggi_url }
      format.json { head :no_content }
    end
  end
end
