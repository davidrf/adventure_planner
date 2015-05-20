class AdventureMembership < ActiveRecord::Base
  belongs_to :user
  belongs_to :adventure

  validates :user, presence: true
  validates :adventure, presence: true
end
