class Card < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :type

  validates :title, presence: true
  validates :url, presence: true
  validates :type_id, presence: true
  belongs_to :user

  mount_uploader :url, ImageUploader

end
