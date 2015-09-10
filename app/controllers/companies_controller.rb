class CompaniesController < ApplicationController
 
 def index
   @companies = Company.all
 end
 
 def new
   
 end
 
 def create
  @new_company = Company.new(company_params)
  @new_company.save
  redirect_to companies_path
 end
 
 def edit
   @edit_company = Company.find(params[:id])
 end
 
  def update
    @edit_company = Company.find(params[:id])
    if @edit_company.update(company_params)
      redirect_to companies_path
    else 
      render 'edit'
    end
  end
  
  def destroy
    @del_company = Company.find(params[:id])
    @del_company.destroy
    redirect_to companies_path
  end
 
private
def company_params
  params.require(:company).permit(:company_name, :company_hq, :ceo, :employees, :stock_position)
end
end


