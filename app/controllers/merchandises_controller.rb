class MerchandisesController < ApplicationController
  before_action :set_merchandise, only: [:show, :edit, :update, :destroy]

  # GET /merchandises
  # GET /merchandises.json
  def index
    @merchandises = Merchandise.all
  end

  # GET /merchandises/1
  # GET /merchandises/1.json
  def show
  end

  # GET /merchandises/new
  def new
    @merchandise = Merchandise.new
  end

  # GET /merchandises/1/edit
  def edit
  end

  # POST /merchandises
  # POST /merchandises.json
  def create
    @merchandise = Merchandise.new(merchandise_params)

    respond_to do |format|
      if @merchandise.save
        format.html { redirect_to @merchandise, notice: 'Merchandise was successfully created.' }
        format.json { render :show, status: :created, location: @merchandise }
      else
        format.html { render :new }
        format.json { render json: @merchandise.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /merchandises/1
  # PATCH/PUT /merchandises/1.json
  def update
    respond_to do |format|
      if @merchandise.update(merchandise_params)
        format.html { redirect_to @merchandise, notice: 'Merchandise was successfully updated.' }
        format.json { render :show, status: :ok, location: @merchandise }
      else
        format.html { render :edit }
        format.json { render json: @merchandise.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /merchandises/1
  # DELETE /merchandises/1.json
  def destroy
    @merchandise.destroy
    respond_to do |format|
      format.html { redirect_to merchandises_url, notice: 'Merchandise was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_merchandise
      @merchandise = Merchandise.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def merchandise_params
      params.require(:merchandise).permit(:name, :price)
    end
end
