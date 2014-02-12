class SubscriptionsController < ApplicationController
  before_filter :ensure_logged_in
  skip_before_filter :check_xhr

  def show
    redirect_to "https://app.greatcodeclub.com/subscription/edit?auth_token=#{current_user.auth_token}"
  end
end