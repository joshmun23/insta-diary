class PlansController < ApplicationController
  def new
    if current_user
      @user = User.find(params[:user_id])
      @subscription = @user.subscriptions.new
    end
    binding.pry
  end
end
