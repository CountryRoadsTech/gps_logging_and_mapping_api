class PointsController < ApplicationController
  before_action :set_point, only: [:show, :update, :destroy]

  # GET /points
  # GET /points.json
  def index
    @points = Point.all
  end

  # GET /points/1
  # GET /points/1.json
  def show
  end

  # POST /points
  # POST /points.json
  def create
    @point = Point.new(point_params)

    if @point.save
      render :show, status: :created, location: @point
    else
      render json: @point.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /points/1
  # PATCH/PUT /points/1.json
  def update
    if @point.update(point_params)
      render :show, status: :ok, location: @point
    else
      render json: @point.errors, status: :unprocessable_entity
    end
  end

  # DELETE /points/1
  # DELETE /points/1.json
  def destroy
    @point.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_point
      @point = Point.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def point_params
      params.require(:point).permit(:user_id, :route_id, :name, :comment, :latitude, :longitude, :accuracy, :altitude, :speed, :heading, :recorded_at, :point_of_interest)
    end
end
