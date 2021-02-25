class TargetMuscle < ApplicationRecord
    belongs_to :workout 
    belongs_to :muscle 
end
