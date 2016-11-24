class Owner < ApplicationRecord
	has_many :dogs
	has_many :partys
	devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
