class Room < ApplicationRecord
  belongs_to :user
  has_many :photos
  validates :home_type, presence: true
   validates :room_type, presence: true
  validates :accommodate, presence: true
  validates :bed_room , presence:true
  validates :bath_room , presence:true
  validates :listing_name , presence:true, length: {maximum: 75}
  validates :summary , presence:true, length: {maximum: 750}
  validates :address , presence:true
  validates :price ,numericality: {only_integer:true ,greater_than:250}, presence:true
end
