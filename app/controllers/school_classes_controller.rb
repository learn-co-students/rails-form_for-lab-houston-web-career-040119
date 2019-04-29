class SchoolClassesController < ApplicationController

    before_action :current_school_class, only: [:show, :edit, :update, :destroy]

    def index
        @school_classes = SchoolClass.all
    end

    def new
        @school_class = SchoolClass.new
    end

    def create
        @school_class = SchoolClass.create(school_class_params)
        redirect_to (@school_class)
    end

    def show
    end

    def edit
    end

    def update
        @school_class.update(school_class_params)
        redirect_to @school_class
    end

    def destroy
        @school_class.destroy
        redirect_to school_classes_path
    end

    private 

    def school_class_params
        params.require(:school_class).permit(:title, :room_number)
    end
    def current_school_class
        @school_class = SchoolClass.find(params[:id])
    end
    
end
