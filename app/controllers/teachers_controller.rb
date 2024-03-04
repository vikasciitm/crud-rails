class TeachersController<ApplicationController
	def index
		@teachers=Teacher.all
	end

	def new
		@teacher=Teacher.new
	end

	def create
		@teacher=Teacher.new(all_params)
		if @teacher.save
			redirect_to teachers_path
		else
			render :new
		end
	end

	def edit
		@teacher=Teacher.find(params[:id])
	end

	def update
		@teacher=Teacher.find(params[:id])
		if @teacher.update(all_params)
			redirect_to teachers_path
		else
			render :edit
		end
	end

	def show
		@teacher=Teacher.find(params[:id])
	end

	def all_params
		{first_name: params[:teacher][:first_name],last_name: params[:teacher][:last_name],email: params[:teacher][:email],subject: params[:teacher][:subject]}
	end
end