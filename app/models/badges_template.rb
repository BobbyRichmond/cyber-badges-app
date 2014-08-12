class BadgesTemplate < ActiveRecord::Base
  attr_accessible :description, :internet_points, :name, :photo
  has_attached_file :photo
  validates_attachment_size :photo, :less_than => 1.megabytes
  do_not_validate_attachment_file_type :photo
end
