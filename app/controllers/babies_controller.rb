class BabiesController < ApplicationController
  def index
    @babies = current_user.babies
  end

  private

  def baby_params
    params.require(:baby).permit(:name, :birth_date, :height, :weight)
  end
end
