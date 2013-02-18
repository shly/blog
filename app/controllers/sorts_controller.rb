class SortsController < ApplicationController
  # GET /sorts
  # GET /sorts.json
  def index
    @sorts = Sort.all
    @sort = Sort.new
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @sorts }
    end
  end

  # GET /sorts/1
  # GET /sorts/1.json
  def show
    @sort = Sort.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @sort }
    end
  end

  # GET /sorts/new
  # GET /sorts/new.json
  def new
    @sort = Sort.new
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @sort }
    end
  end

  # GET /sorts/1/edit
  def edit
    @sort = Sort.find(params[:id])
  end

  # POST /sorts
  # POST /sorts.json
  def create
    @sort = Sort.new(params[:sort])

    respond_to do |format|
      if @sort.save
        format.html { redirect_to @sort, notice: 'Sort was successfully created.' }
        format.json { render json: @sort, status: :created, location: @sort }
      else
        format.html { render action: "new" }
        format.json { render json: @sort.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /sorts/1
  # PUT /sorts/1.json
  def update
    @sort = Sort.find(params[:id])

    respond_to do |format|
      if @sort.update_attributes(params[:sort])
        format.html { redirect_to @sort, notice: 'Sort was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @sort.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sorts/1
  # DELETE /sorts/1.json
  def destroy
    @sort = Sort.find(params[:id])
    @sort.destroy

    respond_to do |format|
      format.html { redirect_to sorts_url }
      format.json { head :no_content }
    end
  end
end
