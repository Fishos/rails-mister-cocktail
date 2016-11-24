class DosesController < ApplicationController
  before_action :set_dose, only: [:new, :create, :update, :destroy]

  def new
    @dose = Dose.new
  end

  def edit
  end

  # POST /doses
  # POST /doses.json
  def create
    @dose = Dose.new(dose_params)

    if @dose.save
      redirect_to doses_path
    else
      render :new
    end
  end

  # PATCH/PUT /doses/1
  # PATCH/PUT /doses/1.json
  def update
    if @dose.update(dose_params)
      redirect_to doses_path
    else
      render :edit
    end
  end

  # DELETE /doses/1
  # DELETE /doses/1.json
  def destroy
    @dose.destroy
    redirect_to doses_path
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dose
      @dose = Dose.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def dose_params
      params.require(:dose).permit(:description)
    end
end

