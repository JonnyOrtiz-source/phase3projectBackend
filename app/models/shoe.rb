class Shoe < ActiveRecord::Base
    has_many :user_shoes, dependent: :destroy
    has_many :users, through: :user_shoes

    def formatted_time
        time.strftime('%A, %m/%d %l:%M %p')
    end
    
end