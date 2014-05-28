class V1::LatesController < ApplicationController
  protect_from_forgery with: :null_session
  def create
    @lecture               = Lecture.find(params[:lecture_id])
    @late                  = Late.new
    @late.late             = params[:late]
    @late.lecture_count_no = @lecture.lecture_count
    @late.user_id          = params[:user_id]
    @late.lecture_id       = params[:lecture_id]
    
    if @late.save
      respond_to do |format|
        format.json { render json: @late }
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
