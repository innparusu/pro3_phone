class V1::LecturesController < ApplicationController
  protect_from_forgery with: :null_session
  def show_all_by_period_and_day
    @period   = Period.find_by(period_number: params[:period].to_i)
    @lectures = @period.lectures.where(day: params[:day])
    respond_to do |format|
      format.json { render json: @lectures }
    end
  end

  def show_all_by_user
    @user     = User.find(params[:id])
    @lectures = @user.lectures
    respond_to do |format|
      format.json { render json: @lectures }
    end
  end
end
