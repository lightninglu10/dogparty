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
			@party.owners
		end

		def param
			params.require(:date).permit(:name)
		end 






end