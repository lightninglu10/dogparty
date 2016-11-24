class PartysController < ApplicationController
		def create 
			@party = Party.new(param)
			@party.date_time = current_party
			@party.owner = current_owner
		end

		def index
			@partys = Party.all
		end

		def show_owners
			@party.owner
		end

		def param
			params.require(:date).permit(:name)
		end 


		def join
			@party.owner = current_owner
		end


		def leave
			@party.current_owner.delete
		end 



end