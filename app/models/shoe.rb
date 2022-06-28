class Shoe < ActiveRecord::Base
    has_many :user_shoes, dependent: :destroy
    has_many :users, through: :user_shoes
end