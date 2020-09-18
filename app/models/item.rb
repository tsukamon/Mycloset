class Item < ApplicationRecord
  belongs_to :user
  has_one_attached :image

  validates :category_id, :season_id, numericality: { other_than: 1, message: 'select' }
  validates :image, presence: true

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :category
  belongs_to_active_hash :season


end
