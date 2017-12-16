class API::V1::CasesController < ApplicationController
  respond_to :json
  def index
    cases = Case.all
    render json: cases, status: :ok
  end
end
