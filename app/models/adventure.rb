class Adventure < ActiveRecord::Base
  validates :name, presence: true
end
