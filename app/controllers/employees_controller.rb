class EmployeesController < ApplicationController
 
 def index
   @company_id = params[:company_id]
   @company_employees = Employee.where("company_id = '#{@company_id}'") 
 end
 
 def new
   @company_employee = Employee.new()
   @company_name = Company.find(params[:company_id]).company_name
 end
 
 def create
  @employee = Employee.new(employee_params)
  @employee.save
  redirect_to company_employees_path
 end
 
 def edit
   #edit_company_employee GET    /companies/:company_id/employees/:id/edit(.:format) employees#edit
   @company_employee = Employee.find(params[:id])
   @company_name = Company.find(params[:company_id]).company_name
 end
 
  def update
    @employee = Employee.find(params[:id])
    if @employee.update(employee_params)
      redirect_to company_employees_path
    else 
      render 'edit'
    end
  end
  
  def destroy
    @employee = Employee.find(params[:id])
    @employee.destroy
    redirect_to company_employees_path
  end
 
private
def employee_params
  params.require(:company_employee).permit(:name, :age, :email, :company_id)
end
end


