class CoffeeshopsController < ApplicationController
  # GET /coffeeshops
  # GET /coffeeshops.json
  def index
    @coffeeshops = Coffeeshop.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @coffeeshops }
    end
  end

  # GET /coffeeshops/1
  # GET /coffeeshops/1.json
  def show
    @coffeeshop = Coffeeshop.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @coffeeshop }
    end
  end

  # GET /coffeeshops/new
  # GET /coffeeshops/new.json
  def new
    @coffeeshop = Coffeeshop.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @coffeeshop }
    end
  end

  # GET /coffeeshops/1/edit
  def edit
    @coffeeshop = Coffeeshop.find(params[:id])
  end

  # POST /coffeeshops
  # POST /coffeeshops.json
  def create
    @coffeeshop = Coffeeshop.new(params[:coffeeshop])

    respond_to do |format|
      if @coffeeshop.save
        format.html { redirect_to maps_index_path, notice: 'Coffeeshop was successfully created.' }
        format.json { render json: @coffeeshop, status: :created, location: @coffeeshop }
      else
        format.html { render action: "new" }
        format.json { render json: @coffeeshop.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /coffeeshops/1
  # PUT /coffeeshops/1.json
  def update
    @coffeeshop = Coffeeshop.find(params[:id])

    respond_to do |format|
      if @coffeeshop.update_attributes(params[:coffeeshop])
        format.html { redirect_to @coffeeshop, notice: 'Coffeeshop was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @coffeeshop.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /coffeeshops/1
  # DELETE /coffeeshops/1.json
  def destroy
    @coffeeshop = Coffeeshop.find(params[:id])
    @coffeeshop.destroy

    respond_to do |format|
      format.html { redirect_to coffeeshops_url }
      format.json { head :no_content }
    end
  end
end
