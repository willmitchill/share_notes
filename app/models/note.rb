class Note < ActiveRecord::Base
  mount_uploader :file, FileUploader
  belongs_to :course
  belongs_to :user
end
