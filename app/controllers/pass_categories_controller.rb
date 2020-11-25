class PassCategoriesController < ApplicationController
  before_action :set_pass_category, only: [:show, :edit, :update, :destroy]

  # GET /pass_categories
  # GET /pass_categories.json
  def index
    @pass_categories = PassCategory.all
  end

  # GET /pass_categories/1
  # GET /pass_categories/1.json
  def show
  end

  # GET /pass_categories/new
  def new
    @pass_category = PassCategory.new
  end

  # GET /pass_categories/1/edit
  def edit
  end

  # POST /pass_categories
  # POST /pass_categories.json
  def create
    @pass_category = PassCategory.new(pass_category_params)

    respond_to do |format|
      if @pass_category.save
        format.html { redirect_to @pass_category, notice: 'Pass category was successfully created.' }
        format.json { render :show, status: :created, location: @pass_category }
      else
        format.html { render :new }
        format.json { render json: @pass_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pass_categories/1
  # PATCH/PUT /pass_categories/1.json
  def update
    respond_to do |format|
      if @pass_category.update(pass_category_params)
        format.html { redirect_to @pass_category, notice: 'Pass category was successfully updated.' }
        format.json { render :show, status: :ok, location: @pass_category }
      else
        format.html { render :edit }
        format.json { render json: @pass_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pass_categories/1
  # DELETE /pass_categories/1.json
  def destroy
    @pass_category.destroy
    respond_to do |format|
      format.html { redirect_to pass_categories_url, notice: 'Pass category was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pass_category
      @pass_category = PassCategory.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def pass_category_params
      params.require(:pass_category).permit(:name, :price)
    end
end
