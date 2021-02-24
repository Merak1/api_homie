class TennantsController < ApplicationController
  before_action :set_tennant, only: %i[show update destroy]

  # GET /tennants
  def index
    @tennants = Tennant.all

    render json: @tennants
  end

  # GET /tennants/1
  def show
    render json: @tennant
  end

  # POST /tennants
  def create
    @tennant = Tennant.new(tennant_params)

    if @tennant.save
      render json: @tennant, status: :created, location: @tennant
    else
      render json: @tennant.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /tennants/1
  def update
    if @tennant.update(tennant_params)
      render json: @tennant
    else
      render json: @tennant.errors, status: :unprocessable_entity
    end
  end

  # DELETE /tennants/1
  def destroy
    @tennant.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_tennant
    @tennant = Tennant.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def tennant_params
    params.require(:tennant).permit(:name, :email, :phone, :availability)
  end
end
