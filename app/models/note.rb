class Note < ActiveRecord::Base
  belongs_to :course
  belongs_to :user
  has_many :upvotes



  def self.search(query)
    # where(:title, query) -> This would return an exact match of the query
    where("title like ?", "%#{query}%")
  end


  mount_uploader :file, FileUploader
end
