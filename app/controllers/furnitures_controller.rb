class FurnituresController < ApplicationController

	# before_action :set_format
	before_action :set_params, only: [:show, :edit, :update, :destroy]
	
	def index 
		@furnitures = Furniture.all

		# for direct display in index page
		# render json: {data: @furnitures} 
		# render json: { status: 'SUCCESS', message: 'Loaded furniture', data: @furnitures }, status: 200

	end

	def show
		# render json: { status: 'SUCCESS', message: 'Loaded furniture', data: @furniture }, status: 200
	end

	def new 
		@furniture = Furniture.new
	end

	def create
    @furniture = Furniture.new(furniture_params)

    respond_to do |format|
      if @furniture.save
        format.html { redirect_to @furniture, notice: 'Article was successfully created.' }
        format.json { render :show, status: :created, location: @furniture }
      else
        format.html { render :new }
        format.json { render json: @furniture.errors, status: :unprocessable_entity }
      end
    end
  end

	def edit
	end

	

	def update
		@furniture.update(furniture_params)
		render json: {data: @furnitures}
		# redirect_to @furniture
	end

	def destroy
		@furniture.destroy
		redirect_to furnitures_path
	end

	private 

	def furniture_params
		params.require(:furniture).permit(:name, :descriptioin, :price)
	end

	def set_params
		@furniture = Furniture.find(params[:id])
	end

	# if all the pages are to be displayed in json format
	# def set_format
	# 	request.format = :json
	# end

end
