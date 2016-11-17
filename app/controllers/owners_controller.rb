class OwnersController < ApplicationController
  before_filter :authenticate_trainer!

  def index
    @owners = Owner.all
  end

  def show
    @owner = Owner.find(params[:id])
  end



end
