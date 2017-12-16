class Dashboard::CasesController < Dashboard::HomeController

  etag{}
  layout 'dashboard'
  before_action :set_case, only: [:show, :edit, :update, :destroy]
  rescue_from ActiveRecord::RecordNotFound, with: :exception
  respond_to :html, :json, :js

  def index
    @cases = Case.all
    respond_with(@cases)
  end

  def show
    respond_with(@case)
  end

  def new
    @case = Case.new
    respond_with(@case)
  end

  def edit
  end

  def create
    @case = current_user.cases.build(case_params)
    @case.save
    respond_with(:dashboard, @case)
  end

  def update
    @case.update(case_params)
    respond_with(:dashboard, @case)
  end

  def destroy
    @case.destroy
    respond_with(:dashboard, @case)
  end

  private
    def set_case
      @case = Case.find(params[:id])
    end

    def case_params
      params.require(:case).permit(:logo, :name, :description, :link, :slug, :tags)
    end
end
