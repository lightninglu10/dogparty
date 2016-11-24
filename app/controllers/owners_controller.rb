class OwnersController < ApplicationController
  before_filter :authenticate_trainer!

  def index
    @owners = Owner.all
  end

  def show
    @owner = Owner.find(params[:id])
  end

  def leave
	@owner.party
  end

  def join
	@owner.party

  end


end
