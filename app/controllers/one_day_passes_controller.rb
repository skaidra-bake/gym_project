class OneDayPassesController < ApplicationController
  before_action :set_one_day_pass, only: [:show, :edit, :update, :destroy]

  # GET /one_day_passes
  # GET /one_day_passes.json
  def index
    @one_day_passes = OneDayPass.all
  end

  # GET /one_day_passes/1
  # GET /one_day_passes/1.json
  def show
  end

  # GET /one_day_passes/new
  def new
    @one_day_pass = OneDayPass.new
  end

  # GET /one_day_passes/1/edit
  def edit
  end

  # POST /one_day_passes
  # POST /one_day_passes.json
  def create
    @one_day_pass = OneDayPass.new(one_day_pass_params)

    respond_to do |format|
      if @one_day_pass.save
        format.html { redirect_to @one_day_pass, notice: 'One day pass was successfully created.' }
        format.json { render :show, status: :created, location: @one_day_pass }
      else
        format.html { render :new }
        format.json { render json: @one_day_pass.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /one_day_passes/1
  # PATCH/PUT /one_day_passes/1.json
  def update
    respond_to do |format|
      if @one_day_pass.update(one_day_pass_params)
        format.html { redirect_to @one_day_pass, notice: 'One day pass was successfully updated.' }
        format.json { render :show, status: :ok, location: @one_day_pass }
      else
        format.html { render :edit }
        format.json { render json: @one_day_pass.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /one_day_passes/1
  # DELETE /one_day_passes/1.json
  def destroy
    @one_day_pass.destroy
    respond_to do |format|
      format.html { redirect_to one_day_passes_url, notice: 'One day pass was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_one_day_pass
      @one_day_pass = OneDayPass.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def one_day_pass_params
      params.require(:one_day_pass).permit(:date, :member_id)
    end
end
