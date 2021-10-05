class FoodRestaurantsController < ApplicationController
  before_action :set_food_restaurant, only: %i[ show edit update destroy ]

  # GET /food_restaurants or /food_restaurants.json
  def index
    @food_restaurants = FoodRestaurant.all
  end

  # GET /food_restaurants/1 or /food_restaurants/1.json
  def show
  end

  # GET /food_restaurants/new
  def new
    @food_restaurant = FoodRestaurant.new
  end

  # GET /food_restaurants/1/edit
  def edit
  end

  # POST /food_restaurants or /food_restaurants.json
  def create
    @food_restaurant = FoodRestaurant.new(food_restaurant_params)

    respond_to do |format|
      if @food_restaurant.save
        format.html { redirect_to @food_restaurant, notice: "Food restaurant was successfully created." }
        format.json { render :show, status: :created, location: @food_restaurant }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @food_restaurant.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /food_restaurants/1 or /food_restaurants/1.json
  def update
    respond_to do |format|
      if @food_restaurant.update(food_restaurant_params)
        format.html { redirect_to @food_restaurant, notice: "Food restaurant was successfully updated." }
        format.json { render :show, status: :ok, location: @food_restaurant }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @food_restaurant.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /food_restaurants/1 or /food_restaurants/1.json
  def destroy
    @food_restaurant.destroy
    respond_to do |format|
      format.html { redirect_to food_restaurants_url, notice: "Food restaurant was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_food_restaurant
      @food_restaurant = FoodRestaurant.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def food_restaurant_params
      params.require(:food_restaurant).permit(:uid, :food_id, :restaurant_id, :status)
    end
end
