class RestaurantDailyMenusController < ApplicationController
  before_action :authenticate_account!
  before_action :set_restaurant_daily_menu, only: %i[ show edit update destroy ]
  layout "dashboard"

  # GET /restaurant_daily_menus or /restaurant_daily_menus.json
  def index
    @restaurant_daily_menus = RestaurantDailyMenu.all
  end

  # GET /restaurant_daily_menus/1 or /restaurant_daily_menus/1.json
  def show
  end

  # GET /restaurant_daily_menus/new
  def new
    @foods = Food.all
    @restaurants = Restaurant.all
    @restaurant_daily_menu = RestaurantDailyMenu.new
  end

  # GET /restaurant_daily_menus/1/edit
  def edit
    @foods = Food.all
    @restaurants = Restaurant.all
  end

  # POST /restaurant_daily_menus or /restaurant_daily_menus.json
  def create
    @restaurant_daily_menu = current_account.restaurant_daily_menus.build(restaurant_daily_menu_params)

    respond_to do |format|
      if @restaurant_daily_menu.save
        @restaurant_daily_menus = RestaurantDailyMenu.all
        
        format.html { redirect_to @restaurant_daily_menu, notice: "Restaurant daily menu was successfully created." }
        format.json { render :show, status: :created, location: @restaurant_daily_menu }
        format.js
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @restaurant_daily_menu.errors, status: :unprocessable_entity }
        format.js
      end
    end
  end

  # PATCH/PUT /restaurant_daily_menus/1 or /restaurant_daily_menus/1.json
  def update
    respond_to do |format|
      if @restaurant_daily_menu.update(restaurant_daily_menu_params)
        @restaurant_daily_menus = RestaurantDailyMenu.all
        format.html { redirect_to @restaurant_daily_menu, notice: "Restaurant daily menu was successfully updated." }
        format.json { render :show, status: :ok, location: @restaurant_daily_menu }
        format.js
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @restaurant_daily_menu.errors, status: :unprocessable_entity }
        format.js
      end
    end
  end

  def delete
      @restaurant_daily_menu = RestaurantDailyMenu.find_by(uid: params[:restaurant_daily_menu_id])
    end

  # DELETE /restaurant_daily_menus/1 or /restaurant_daily_menus/1.json
  def destroy
    @restaurant_daily_menu.destroy
    respond_to do |format|
      format.html { redirect_to restaurant_daily_menus_url, notice: "Restaurant daily menu was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_restaurant_daily_menu
      @restaurant_daily_menu = RestaurantDailyMenu.find_by(uid: params[:id])
    end

    # Only allow a list of trusted parameters through.
    def restaurant_daily_menu_params
      params.require(:restaurant_daily_menu).permit(:day, :food_id, :restaurant_id, :status)
    end
end
