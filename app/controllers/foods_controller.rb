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
    @food = FactoryBot.create(:food)
    if @food.save
      redirect_to("/foods/show/#{@food.id}")
    end
  end
  def update
  end
  def destroy
  end
end
