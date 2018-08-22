class ComputersController < ApplicationController
  def index
    @computers = Computer.all
  end

  def show
    @computer = Computer.find_by(id: params[:id])
  end

  def new

  
  end

  def create
    computer = Computer.create(
      harddrive: params[:harddrive],
      ram: params[:ram],
      price: params[:price]
      )
    redirect_to "/computers/#{computer.id}"
  end

  def edit

  end

  def update

  end

  def destroy

  end
end
