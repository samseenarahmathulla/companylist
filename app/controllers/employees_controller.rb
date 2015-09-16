class EmployeesController < ApplicationController
 
 def index
   @company_id = params[:company_id]
   @company_employees = Employee.where("company_id = '#{@company_id}'") 
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
   #edit_company_employee GET    /companies/:company_id/employees/:id/edit(.:format) employees#edit
   # @sql = "select * from employees join companies on companies.id = employees.company_id where employees.id = #{params[:id]} and companies.id = #{params[:company_id]};"
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
end


