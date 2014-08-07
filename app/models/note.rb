class Note < ActiveRecord::Base
  belongs_to :course
  belongs_to :user


  mount_uploader :file, FileUploader
end
