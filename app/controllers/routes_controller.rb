class RoutesController < ApplicationController
  before_action :set_route, only: [:show, :update, :destroy]

  # GET /routes
  # GET /routes.json
  def index
    @routes = Route.all
  end

  # GET /routes/1
  # GET /routes/1.json
  def show
  end

  # POST /routes
  # POST /routes.json
  def create
    @route = Route.new(route_params)

    if @route.save
      render :show, status: :created, location: @route
    else
      render json: @route.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /routes/1
  # PATCH/PUT /routes/1.json
  def update
    if @route.update(route_params)
      render :show, status: :ok, location: @route
    else
      render json: @route.errors, status: :unprocessable_entity
    end
  end

  # DELETE /routes/1
  # DELETE /routes/1.json
  def destroy
    @route.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_route
      @route = Route.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def route_params
      params.require(:route).permit(:user_id, :name, :comment, :total_distance, :change_in_elevation)
    end
end
