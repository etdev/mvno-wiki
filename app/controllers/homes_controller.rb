class HomesController < ApplicationController
  def show
    @home_form = HomeForm.new
  end
end
