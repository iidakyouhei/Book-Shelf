class Card < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :type

  validates :title, presence: true
  validates :image, presence: true
  validates :type_id, presence: true
  belongs_to :user
  has_many :comments
  
  mount_uploader :image, ImageUploader

  def self.search(search)
    if search != ""
      Card.where('title LIKE(?)', "%#{search}%")
    else
      Card.all
    end
  end
end
