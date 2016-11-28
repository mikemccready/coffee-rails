class MakerPod < ApplicationRecord
	belongs_to :coffee_maker
	belongs_to :coffee_pod
end
