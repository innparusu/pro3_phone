module V1
  class UsersController < ApplicationController
    protect_from_forgery with: :null_session
    def create
      @user = User.new
      @user.name = params[:name]
      @user.save
      respond_to do |format|
        format.json { render json: @user}
      end
    end

    def show
      @user = User.find(params[:id])
      respond_to do |format|
        format.json { render json: @user}
      end
    end
  end
end
