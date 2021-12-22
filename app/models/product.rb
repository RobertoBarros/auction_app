class Product < ApplicationRecord
  belongs_to :buyer, class_name: 'User', optional: true
  belongs_to :user
  has_many :bids, dependent: :destroy

  scope :in_auction, -> { where(buyer: nil) }
end
