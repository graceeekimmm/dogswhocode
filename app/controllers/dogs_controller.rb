class DogsController < ApplicationController
	before_action :find_dog, only: [:show, :edit, :update, :destroy]


	def index
		@dogs = Dog.all.order("created_at DESC")
	end

	def new
		@dog=current_user.dogs.build
	end

	def show
	end

	def edit
	end

	def update
		if @dog.update(dog_params)
			redirect_to @dog, notice: " You have succesfully updated the dog information"
		else
			render 'edit'
		end
	end

	def destroy
		@dog.destroy
		redirect_to root_path
	end


	def create
		@dog =current_user.dogs.build(dog_params)
		if @dog.save
			redirect_to @dog, notice: " You have succesfully added the Dog"
		else
			render 'new'
		end
	end

	private

	def dog_params
		params.require(:dog).permit(:title,:description,:image)
	end



	def find_dog
		@dog = Dog.find(params[:id])
	end


end
