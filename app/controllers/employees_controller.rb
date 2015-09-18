class EmployeesController < ApplicationController

 before_filter :must_be_admin, except: [:index]
 
 def index
   @company_id = params[:company_id]
   @company_employees = Employee.where("company_id = '#{@company_id}'").paginate(:page => params[:page])
   @company_name = Company.find(@company_id).company_name 
 end
 
 def new
   @company_employee = Employee.new()
   @companies = Company.all
 end
 
 def create
  @company_employee = Employee.new(employee_params)
  @companies = Company.all
  if @company_employee.save  
    redirect_to company_employees_path
  else
    render 'new'
  end
 end
 
 def edit
   @company_employee = Employee.find(params[:id])
   @companies = Company.all
 end
 
  def update
    @company_employee = Employee.find(params[:id])
    @companies = Company.all
    if @company_employee.update(employee_params)
      redirect_to company_employees_path
    else 
      render 'edit'
    end
  end
  
  def destroy
    @company_employee = Employee.find(params[:id])
    @company_employee.destroy
    redirect_to company_employees_path
  end
 
private
def employee_params
  params.require(:employee).permit(:name, :age, :email, :company_id)
end

def company_emp_params
  params.require(:company).permit(:number_of_employees)
end

def must_be_admin
  unless current_user && current_user.admin?
    redirect_to root_path, notice: "No Admin Rights"
  end
end

end


