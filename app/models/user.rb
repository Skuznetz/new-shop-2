class User < ApplicationRecord

attr_accessible :login,:email,:pasword,:pasword_confirmation,:remember_me
	has_one :cart
	has_many :orders
end
