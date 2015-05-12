class SubscriptionsController < ApplicationController
  def new
    if current_user
      @subscription = current_user.subscriptions.new
    end
  end

  def create
    new_subscription = current_user.subscriptions.new(subscription_params)

    if new_subscription.save
      redirect_to user_subscriptions_path
    else
      flash[:errors] = new_subscription.errors

      render :new
    end
  end

  def index
  end

  private

  def subscription_params
    params.require(:subscription).permit(:plan_id, :schedule_id)
  end
end
