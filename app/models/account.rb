class Account < ActiveRecord::Base
  belongs_to :user
  attr_accessible :admin, :name
  has_many :badges
end
