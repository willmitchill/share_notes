class Course < ActiveRecord::Base
  belongs_to :user
  belongs_to :university
  has_many :notes



  def self.search(query)
    where("title like ?", "%#{query}%")
  end

end
