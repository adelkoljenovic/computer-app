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
    @computer = Computer.find_by(id: params[:id])
  end

  def update
    computer = Computer.find_by(id: params[:id])
    computer.harddrive = params[:harddrive]
    computer.ram = params[:ram]
    computer.price = params[:price]
    computer.save
    redirect_to "/computers/#{computer.id}"
 
  end

  def destroy

  end
end
