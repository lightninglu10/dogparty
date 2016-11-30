class PartiesController < ApplicationController
	def create 
		@party = Party.new(param)
    if @party.save
      redirect_to parties_path
    else 
      flash[:error] = @party.errors.full_messages.to_sentence
      redirect_to parties_path
    end
	end


  def index
    @parties = Party.all
  end

  def show
    @party = Party.find(params[:id])
  end

  def param
	 params.require(:party).permit(:name)
   end 

  def delete
    @party = Party.find(params[:id])
    @party.destroy
    redirect_to parties_path
  end


end