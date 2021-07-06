class CompaniesController < ApplicationController
  def index
    render json: Company.all
  end

  # def create
  #   company = Company.new(
  #     name: params["name"],
  #   )
  #   if company.save
  #     render json: company.as_json
  #   else
  #     render json: { errors: company.errors.full_messages }, status: 422
  #   end
  # end
end
