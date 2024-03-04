class StudentsController < ApplicationController
	def index
		@students=Student.all
	end
	def new
		@student=Student.new
	end
	def create
		@student=Student.new(first_name: params[:student][:first_name],last_name: params[:student][:last_name],email: params[:student][:email],mobile_number: params[:student][:mobile_number])
		if @student.save
			redirect_to students_path
		else
			render :new
		end
	end

	def add
		
	end
	def edit
		@student=Student.find(params[:id])
	end
	def update
		@student=Student.find(params[:id])
		if @student.update(first_name: params[:student][:first_name],last_name: params[:student][:last_name],email: params[:student][:email],mobile_number: params[:student][:mobile_number])
			redirect_to students_path
		else
			render :edit
		end
	end
	def show
		@student=Student.find(params[:id])
	end
end