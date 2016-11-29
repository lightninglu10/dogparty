class Party < ApplicationRecord
	has_many :users
	devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
