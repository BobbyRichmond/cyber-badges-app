class BadgesTemplate < ActiveRecord::Base
  attr_accessible :description, :internet_points, :name, :photo
  has_attached_file :photo, :styles => { :small => "150x105>" }
  validates_attachment_size :photo, :less_than => 10.megabytes
  do_not_validate_attachment_file_type :photo
end
