class V1::LatesController < ApplicationController
  def create
    @user      = User.find(params[:user_id])
    @lecture   = Lecture.find(params[:lecture_id])
    @late      = Late.new
    @late.late = params[:late]
    @user    << @late
    @lecture << @late

    if @user.save && @lecture.save
      respond_to do |format|
        format.json { render json: @user }
      end
    end
  end

  def show
    @late = Late.find(params[:id])
    respond_to do |format|
      format.json { render json: @late }
    end
  end
end
