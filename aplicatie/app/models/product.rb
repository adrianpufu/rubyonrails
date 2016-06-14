class Product < ActiveRecord::Base
  belongs_to :channel
  has_many :variants
  has_many :comments
  def self.search(search)
  if search
    self.where("name like ?", "%#{search}%")
  else
    self.all
  end
  end
end
