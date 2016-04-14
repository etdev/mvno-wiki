class PlanSearchesController < ApplicationController
  def index
    @plans = find_plans
  end

  private

  def plan_search_params
    params.require(:home_form).permit(:phone_id, :network_id, :data_size)
  end

  def find_plans
    Plan.where("data_size >= ?", plan_search_params[:data_size])
  end
end
