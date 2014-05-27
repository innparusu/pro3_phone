class V1::EntriesController < ApplicationController
  protect_from_forgery with: :null_session
  def create
    @user                = User.find(params[:user_id])
    @lecture             = Lecture.find(params[:lecture_id])
    @entry               = Entry.new
    @entry.late_count    = 0
    @entry.absence_count = 0
    @user.entries << @entry
    @lecture.entries << @entry

    if @user.save && @lecture.save
      respond_to do |format|
        format.json { render json: @user }
      end
    end
  end

  def show
    @entry = Entry.find(params[:id])
    respond_to do |format|
      format.json { render json: @entry }
    end
  end
end
