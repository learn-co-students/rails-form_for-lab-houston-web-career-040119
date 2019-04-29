class SchoolClassesController < ApplicationController

  def index
		@scs = SchoolClass.all
	end

	def show
		@sc = SchoolClass.find(params[:id])
	end

	def new
		@sc = SchoolClass.new
	end

	def create
	  @sc = SchoolClass.create(sc_params)
	  redirect_to school_class_path(@sc)
	end

	def edit
		@sc = SchoolClass.find(params[:id])
	end

	def update
	  @sc = SchoolClass.find(params[:id])
	  @sc.update(sc_params)
	  redirect_to school_class_path(@sc)
	end

	private

	def sc_params
		params.require(:school_class).permit(:title, :room_number)
	end

end
