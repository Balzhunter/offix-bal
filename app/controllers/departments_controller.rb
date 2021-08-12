class DepartmentsController < ApplicationController
  # GET /departments
  def index
    @departments = Department.all
  end

  # GET /departments/:id
  def show
    @department = Department.find(params[:id])
  end

  # GET /departments/new
  def new
    @department = Department.new
  end

  # POST /departments
  def create
    @department = Department.new(department_params)

    if @department.save
      redirect_to @department
    else
      render :new
    end
  end

  # GET /departments/:id/edit
  def edit
    @department = Department.find(params[:id])
  end

  # PATCH /departments/:id
  def update
    @department = Department.find(params[:id])

    if @department.update(department_params)
      redirect_to @department
    else
      render :edit
    end
  end

  # DELETE /departments/:id
  def destroy
    @department = Department.find(params[:id])
    @department.destroy
    redirect_to departments_path
  end

  private

  def department_params
    params.require(:department).permit(:name, :description)
  end
end

