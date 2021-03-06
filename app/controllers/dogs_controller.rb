class DogsController < ApplicationController
  before_action :set_dog, only: [:show, :edit, :update, :destroy]
  before_action :authorize

  def index
    @dogs = Dog.all.order("created_at DESC")
  end

  def show
  end

  def new
    @dog = Dog.new
  end

  def edit
  end

  def destroy
    @dog.destroy  
    redirect_to dogs_path
  end

  def create  
    dog = Dog.create(dog_params).blank?
    redirect_to dogs_path
  end

  def update
    @dog.update(dog_params)
    redirect_to dog_path(@dog)
  end

  private 

  def set_dog 
    @dog = Dog.find(params[:id])
  end

  def dog_params
    params.require(:dog).permit(:name, :motto, :avatar)
  end
end
