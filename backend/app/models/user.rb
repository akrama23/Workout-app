class User < ApplicationRecord
    has_many :favorites
    has_many :workouts, through: :favorites
    
    
    has_secure_password
    validates :email, uniqueness: { case_sensitive: false }
    # validates :first_name, presence: true
    # validates :last_name, presence: true
    # validates :image, presence: true 

end
