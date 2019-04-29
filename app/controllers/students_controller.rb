class StudentsController < ApplicationController

    before_action :current_student, only: [:show, :edit, :update, :destroy]

    def index
        @students = Student.all
    end

    def new
        @student = Student.new
    end

    def create
        @student = Student.create(student_params)
        redirect_to (@student)
    end

    def show
    end

    def edit
    end

    def update
        @student.update(student_params)
        redirect_to@student
    end

    def destroy
        @student.destroy
        redirect_to students_path
    end

    private

    def student_params
        params.require(:student).permit(:first_name, :last_name)
    end

    def current_student
        @student = Student.find(params[:id])
    end
end
