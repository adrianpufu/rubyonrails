class Product < ActiveRecord::Base
  belongs_to :channel
  has_many :variants
end
