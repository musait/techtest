class Delivery < ApplicationRecord
  has_many :delivery_items
  has_many :items, through: :delivery_items
  belongs_to :order_picker, optional: true
end
