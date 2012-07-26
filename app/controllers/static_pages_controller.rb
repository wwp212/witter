class StaticPagesController < ApplicationController
  before_filter :signed_in_user, only: [:home]

  def home    
  end

  def help
  end

  def about
  end

  private
    def signed_in_user
      if signed_in?
        redirect_to current_user
      end
    end
end
