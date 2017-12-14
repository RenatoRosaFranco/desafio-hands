class CasesController < ApplicationController
  respond_to :json
  def index
    @cases = Case.all
    render json: @cases, only: [:logo, :name, :description, :link]
  end
end
