class Item < ApplicationRecord
  belongs_to :user
  has_one_attached :image
  belongs_to :category

  validates :season_id, numericality: { other_than: 1, message: 'select' }
  validates :image, presence: true
  validates :category_id, numericality: { other_than: 1, message: 'select' }


  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :season


end
