class FoodsController < ApplicationController
  def index
    @foods = params[:letter].nil? ? Food.all : Food.by_letter(params[:letter])
  end
  def show
    @food = Food.find(params[:id])
  end
  def new
    @food = Food.new
  end
  def edit
    @food = Food.find(params[:id])
  end
  def create
    @food = Food.new(food_params)
    respond_to do |format|
      if @post.save
        format.html { redirect_to foods_url(@food), notice: "Foods was successfully created." }
        format.json { render :show, status: :created, location: @food }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @food.errors, status: :unprocessable_entity }
      end
    end
  end
  def update
    respond_to do |format|
      if @food.update(food_params)
        format.html { redirect_to food_url(@food), notice: "food was successfully updated." }
        format.json { render :show, status: :ok, location: @food }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @food.errors, status: :unprocessable_entity }
      end
    end
  end
  def destroy
    @food.destroy

    respond_to do |format|
      format.html { redirect_to foods_url, notice: "food was successfully destroyed." }
      format.json { head :no_content }
    end
  end
  def food_params
    if params[:food].is_a? String
      params[:food]
    else
      params.require(:food).permit(:name, :description, :price, :category_id)
    end
  end
end
