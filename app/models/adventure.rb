class Adventure < ActiveRecord::Base
  has_many :adventure_memberships
  has_many :members, through: :adventure_memberships, source: :user

  validates :name, presence: true
end
