class Badge < ActiveRecord::Base
  attr_accessible :description, :internet_points, :name
  belongs_to :account
end
