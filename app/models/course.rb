class Course < ActiveRecord::Base
  belongs_to :user
  belongs_to :univerisity
end
