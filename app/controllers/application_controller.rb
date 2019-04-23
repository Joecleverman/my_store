class ApplicationController < ActionController::Base

    before_action :set_cart
  
    private
  
    def set_cart
      @cart = current_user.current_cart unless current_user.nil?
    end
  
  end

