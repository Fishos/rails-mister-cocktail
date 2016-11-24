class CocktailsController < ApplicationController
  before_action :set_cocktail, only: [:show, :edit, :update, :destroy]

  # GET /cocktails
  # GET /cocktails.json
  def index
    @cocktails = Cocktail.all
  end

  # def top
  #   @cocktails = Cocktail.where(rating: 5)
  # end

  def show
  end

  def new
    @cocktail = Cocktail.new
  end

  def edit
  end

  # POST /cocktails
  # POST /cocktails.json
  def create
    @cocktail = Cocktail.new(cocktail_params)

    if @cocktail.save
      redirect_to cocktails_path
    else
      render :new
    end
  end

  # PATCH/PUT /cocktails/1
  # PATCH/PUT /cocktails/1.json
  def update
    if @cocktail.update(cocktail_params)
      redirect_to cocktails_path
    else
      render :edit
    end
  end

  # DELETE /cocktails/1
  # DELETE /cocktails/1.json
  def destroy
    @cocktail.destroy
    redirect_to cocktails_path
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cocktail
      @cocktail = Cocktail.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cocktail_params
      params.require(:cocktail).permit(:name)
    end
end
