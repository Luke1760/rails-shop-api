class Api::V1::UsersController < ApplicationController
  before_action :set_page, only: [:index]
  before_action :set_per_page, only: [:index]

  def index
    @users = User.offset(@page).limit(@per_page)
    render json: {error_code: 0, data: @users, message: 'ok'}, status: 200
  end

  private
  def _to_i(param, default_no = 1)
    param && param&.to_i > 0 ? param&.to_i : default_no.to_i
  end

  
  # api/v1/users?page=1
  def set_page
    @page = _to_i(params[:page], 1)
    @page = set_per_page * (@page - 1)
  end

  # api/v1/users?per_page=10
  def set_per_page
    @set_per_page = _to_i(params[:per_page], 10)
  end
end
