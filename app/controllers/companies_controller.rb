class CompaniesController < ApplicationController
 
 before_filter :must_be_admin, except: [:index]
 
 def index
   # @companies = Company.all
   @companies = Company.paginate(:page => params[:page])  #per page 10 is given in model.
 end
 
 def new
   @company = Company.new()
 end
 
 def create
  @company = Company.new(company_params)
  if @company.save
    redirect_to companies_path
  else
    render 'new'
  end
 end
 
 def edit
   @company = Company.find(params[:id])
 end
 
  def update
    @company = Company.find(params[:id])
    if @company.update(company_params)
      redirect_to companies_path
    else 
      render 'edit'
    end
  end
  
  def destroy
    @company = Company.find(params[:id])
    @company.destroy
    redirect_to companies_path
  end
 
private
def company_params
  params.require(:company).permit(:company_name, :company_hq, :ceo, :number_of_employees, :stock_position)
end

def must_be_admin
  unless current_user && current_user.admin?
    redirect_to root_path, notice: "No Admin Rights"
  end
end
  
end


