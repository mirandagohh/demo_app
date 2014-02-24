class SpaceCatsController < ApplicationController
  # GET /space_cats
  # GET /space_cats.json
  def index
    @space_cats = SpaceCat.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @space_cats }
    end
  end

  # GET /space_cats/1
  # GET /space_cats/1.json
  def show
    @space_cat = SpaceCat.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @space_cat }
    end
  end

  # GET /space_cats/new
  # GET /space_cats/new.json
  def new
    @space_cat = SpaceCat.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @space_cat }
    end
  end

  # GET /space_cats/1/edit
  def edit
    @space_cat = SpaceCat.find(params[:id])
  end

  # POST /space_cats
  # POST /space_cats.json
  def create
    @space_cat = SpaceCat.new(params[:space_cat])

    respond_to do |format|
      if @space_cat.save
        format.html { redirect_to @space_cat, notice: 'Space cat was successfully created.' }
        format.json { render json: @space_cat, status: :created, location: @space_cat }
      else
        format.html { render action: "new" }
        format.json { render json: @space_cat.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /space_cats/1
  # PUT /space_cats/1.json
  def update
    @space_cat = SpaceCat.find(params[:id])

    respond_to do |format|
      if @space_cat.update_attributes(params[:space_cat])
        format.html { redirect_to @space_cat, notice: 'Space cat was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @space_cat.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /space_cats/1
  # DELETE /space_cats/1.json
  def destroy
    @space_cat = SpaceCat.find(params[:id])
    @space_cat.destroy

    respond_to do |format|
      format.html { redirect_to space_cats_url }
      format.json { head :no_content }
    end
  end
end
