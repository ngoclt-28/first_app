class MicropostsController < ApplicationController
  before_action :signed_in_user, only: [:create, :destroy]

  def index
  end

  def create
    @micropost = current_user.micropost.build(micropost_params)
    if @micropost.save
      flash[:success] = "micropost created!"
      redirect_to root_url
    else
      render "static_pages/home
    end
  end

  def destroy
  end
end
