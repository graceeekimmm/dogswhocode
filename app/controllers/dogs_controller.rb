class DogsController < ApplicationController
	before_action :find_dog, only: [:show, :edit, :update, :destroy]


	def index
	end

	def new
		@dog=Dog.new
	end

	def show
	end

	def edit
	end

	def update
	end

	def destroy
	end


	def create
		@dog =Dog.new(dog_params)
		if @dog.save
			redirect_to @dog, notice: " You have succesfully added the Dog"
		else
			render 'new'
		end
	end

	private

	def dog_params
		params.require(:dog).permit(:title,:description)
	end



	def find_dog
		@dog = Dog.find(params[:id])
	end


end
