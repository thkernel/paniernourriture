class RestaurantOpeningTimesController < ApplicationController
  before_action :authenticate_account!
  before_action :set_restaurant_opening_time, only: %i[ show edit update destroy ]

  layout "dashboard"
  # GET /restaurant_opening_times or /restaurant_opening_times.json
  def index
    @restaurant_opening_times = RestaurantOpeningTime.all
  end

  # GET /restaurant_opening_times/1 or /restaurant_opening_times/1.json
  def show
  end

  # GET /restaurant_opening_times/new
  def new
    @restaurants = Restaurant.all
    @restaurant_opening_time = RestaurantOpeningTime.new
  end

  # GET /restaurant_opening_times/1/edit
  def edit
    @restaurants = Restaurant.all
  end

  # POST /restaurant_opening_times or /restaurant_opening_times.json
  def create
    @restaurant_opening_time = current_account.restaurant_opening_times.build(restaurant_opening_time_params)

    respond_to do |format|
      if @restaurant_opening_time.save
        @restaurant_opening_times = RestaurantOpeningTime.all
        format.html { redirect_to @restaurant_opening_time, notice: "Restaurant opening time was successfully created." }
        format.json { render :show, status: :created, location: @restaurant_opening_time }
        format.js
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @restaurant_opening_time.errors, status: :unprocessable_entity }
        format.js
      end
    end
  end

  # PATCH/PUT /restaurant_opening_times/1 or /restaurant_opening_times/1.json
  def update
    respond_to do |format|
      if @restaurant_opening_time.update(restaurant_opening_time_params)
        @restaurant_opening_times = RestaurantOpeningTime.all
        format.html { redirect_to @restaurant_opening_time, notice: "Restaurant opening time was successfully updated." }
        format.json { render :show, status: :ok, location: @restaurant_opening_time }
        format.js
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @restaurant_opening_time.errors, status: :unprocessable_entity }
        format.js
      end
    end
  end

  def delete
      @restaurant_opening_time = RestaurantOpeningTime.find_by(uid: params[:restaurant_opening_time_id])
    end

  # DELETE /restaurant_opening_times/1 or /restaurant_opening_times/1.json
  def destroy
    @restaurant_opening_time.destroy
    respond_to do |format|
      format.html { redirect_to restaurant_opening_times_url, notice: "Restaurant opening time was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_restaurant_opening_time
      @restaurant_opening_time = RestaurantOpeningTime.find_by(uid: params[:id])
    end

    # Only allow a list of trusted parameters through.
    def restaurant_opening_time_params
      params.require(:restaurant_opening_time).permit(:restaurant_id, :day, :start_time, :end_time)
    end
end
