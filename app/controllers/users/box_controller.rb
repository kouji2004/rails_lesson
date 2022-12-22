class Users::BoxController < ApplicationController
  def index
    @user = User.find(params[:id])
  end
end
