class User < ActiveRecord::Base
    has_many :user_shoes, dependent: :destroy
    has_many :shoes, through: :user_shoes
end