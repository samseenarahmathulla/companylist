class CompaniesController < ApplicationController
 
 def index
   @companies = Company.all
 end
 
 def new
   @company = Company.new()
 end
 
 def create
  @company = Company.new(company_params)
  @company.save
  redirect_to companies_path
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
  params.require(:company).permit(:company_name, :company_hq, :ceo, :employees, :stock_position)
end
end


