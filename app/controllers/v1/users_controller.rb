class V1::UsersController < ApplicationController
  protect_from_forgery with: :null_session
  def create
    @user              = User.new
    @user.name         = params[:name]
    @user.grade        = params[:grade].to_i
    @user.number       = params[:number]
    @user.mail_address = params[:mail_address]
    @user.password     = params[:password]
    @user.save
    if @user.save
      respond_to do |format|
        format.json { render json: @user }
      end
    end
  end

  def show
    @user = User.find(params[:id])
    respond_to do |format|
      format.json { render json: @user }
    end
  end

  def signin
    @user = User.find_by(number: params[:id])
    if @user.password == params[:password]
      respond_to do |format|
        format.json { render json: @user }
      end
    else
      respond_to do |format|
        format.json { render json: nil}
      end
    end
  end
end
