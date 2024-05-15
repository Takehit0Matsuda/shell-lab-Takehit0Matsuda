class MealLogsController < ApplicationController
  before_action :set_meal_log, only: %i[ show edit update destroy ]

  # GET /meal_logs or /meal_logs.json
  def index
    @meal_logs = MealLog.all
  end

  # GET /meal_logs/1 or /meal_logs/1.json
  def show
  end

  # GET /meal_logs/new
  def new
    @meal_log = MealLog.new
  end

  # GET /meal_logs/1/edit
  def edit
  end

  # POST /meal_logs or /meal_logs.json
  def create
    @meal_log = MealLog.new(meal_log_params)

    respond_to do |format|
      if @meal_log.save
        format.html { redirect_to meal_log_url(@meal_log), notice: "Meal log was successfully created." }
        format.json { render :show, status: :created, location: @meal_log }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @meal_log.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /meal_logs/1 or /meal_logs/1.json
  def update
    respond_to do |format|
      if @meal_log.update(meal_log_params)
        format.html { redirect_to meal_log_url(@meal_log), notice: "Meal log was successfully updated." }
        format.json { render :show, status: :ok, location: @meal_log }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @meal_log.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /meal_logs/1 or /meal_logs/1.json
  def destroy
    @meal_log.destroy

    respond_to do |format|
      format.html { redirect_to meal_logs_url, notice: "Meal log was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_meal_log
      @meal_log = MealLog.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def meal_log_params
      params.require(:meal_log).permit(:Eat_date, :Meal_Name, :Meal_description, :Calorie)
    end
end
