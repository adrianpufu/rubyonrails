class Order < ActiveRecord::Base
    belongs_to :buyer
    has_many :orders
    has_many :variant
end
