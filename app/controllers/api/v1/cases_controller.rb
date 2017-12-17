class API::V1::CasesController < ApplicationController
  respond_to :json, :js
  def index
    cases = Case.all
    render json: cases, only: [:id, :logo, :name, :description, :link]
  end
end
