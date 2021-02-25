class Workout < ApplicationRecord
    has_many :favorites 
    has_many :users, through: :favorites 
    has_many :target_muscles
    has_many :muscles, through: :target_muscles 
end
