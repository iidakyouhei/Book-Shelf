class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :name, :email, presence: true, uniqueness: { case_sensitive: true }
  validates :password, presence: true, length: { minimum: 6 }

  has_many :cards
  has_many :comments
end
