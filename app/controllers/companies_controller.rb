class CompaniesController < ApplicationController
    before_action :find_company, only: [:show, :edit, :update, :destroy]

    def index 
        @companies = Company.all
    end 

    def new  
        @company = Company.new
    end 

    def show 
        @employee = self.employees.new
    end 

    def edit 
    end 

    def create 
        @company = Company.create(comapny_params)
        redirect_to company_path(@company)
    end 

    def update 
        @company.update(company_params)
        redirect_to company_path(@company)
    end 

    def destroy 
        @company.destroy 
        redirect_to companies_path
    end 

    private 
    
    def comapny_params 
        params.require(:company).permit(:name)
    end 

    def find_company 
        @company = Company.find(params[:id])
    end 
end