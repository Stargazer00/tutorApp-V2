class StudentsController < ApplicationController
	before_action :set_student, only: [:show, :update, :destroy, :edit]

	def new
		@student = Student.new
	end

	def create
		@student = Student.new(student_params)

		if @student.save
			redirect_to student_path(@student)
		else
			render 'new'
		end
	end

	def show

	end

	def edit
	end

	def update
	end

	def destroy
	end

	private
		def student_params
			params.require(:student).permit(:username, :email, :password, :password_confirmation)
		end

		def set_student
			@student = Student.find(params[:id])
		end
end