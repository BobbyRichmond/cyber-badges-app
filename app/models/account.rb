class Account < ActiveRecord::Base
  attr_accessible :admin, :name
  has_many :badges
end
