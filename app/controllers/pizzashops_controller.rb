class PizzashopsController < ApplicationController
  # GET /pizzashops
  # GET /pizzashops.json
  def index
    @pizzashops = Pizzashop.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @pizzashops }
    end
  end

  # GET /pizzashops/1
  # GET /pizzashops/1.json
  def show
    @pizzashop = Pizzashop.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @pizzashop }
    end
  end

  # GET /pizzashops/new
  # GET /pizzashops/new.json
  def new
    @pizzashop = Pizzashop.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @pizzashop }
    end
  end

  # GET /pizzashops/1/edit
  def edit
    @pizzashop = Pizzashop.find(params[:id])
  end

  # POST /pizzashops
  # POST /pizzashops.json
  def create
    @pizzashop = Pizzashop.new(params[:pizzashop])

    respond_to do |format|
      if @pizzashop.save
        format.html { redirect_to maps_index_path, notice: 'Pizzashop was successfully created.' }
        format.json { render json: @pizzashop, status: :created, location: @pizzashop }
      else
        format.html { render action: "new" }
        format.json { render json: @pizzashop.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /pizzashops/1
  # PUT /pizzashops/1.json
  def update
    @pizzashop = Pizzashop.find(params[:id])

    respond_to do |format|
      if @pizzashop.update_attributes(params[:pizzashop])
        format.html { redirect_to @pizzashop, notice: 'Pizzashop was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @pizzashop.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pizzashops/1
  # DELETE /pizzashops/1.json
  def destroy
    @pizzashop = Pizzashop.find(params[:id])
    @pizzashop.destroy

    respond_to do |format|
      format.html { redirect_to pizzashops_url }
      format.json { head :no_content }
    end
  end
end
