class PropertiesController < ApplicationController
  before_action :set_property, only: %i[show update destroy]

  # GET /properties
  def index
    @properties = Property.includes(:tennant).where(status: :published)

    render json: @properties, include: :tennant
  end

  # GET /properties/1
  def show
    @property = Property.find_by(id: params[:id], tennant: @tennant)

    render json: @property
  end

  # POST /properties
  def create
    @property = Property.new(property_params)

    if @property.save
      render json: @property, status: :created, location: @property
    else
      render json: @property.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /properties/1
  def update
    if @property.update(property_params)
      render json: @property
    else
      render json: @property.errors, status: :unprocessable_entity
    end
  end

  # DELETE /properties/1
  def destroy
    @property.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_property
    @property = Property.find_by(id: params[:id])
  end

  # Only allow a list of trusted parameters through.
  def property_params
    params.require(:property).permit(:name, :description, :rental_price, :tennant_id)
  end

  def set_tennant
    @tennant = Tennant.find(params[:id])
  end
end
