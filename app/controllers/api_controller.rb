class ApiController < ApplicationController
  before_action :set_default_format

  private 

    def set_default_format
      request.format = :json
    end
    
    def check_is_same_user
      if @user != current_v1_user
        render json: false, status: 401
      end
    end

end