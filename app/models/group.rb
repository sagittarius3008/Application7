class Group < ApplicationRecord
  has_many :group_users
  has_many :users, through: :group_users
  validates :name, length: {maximum: 20, minimum: 2}, uniqueness: true
  # validates :introduction, length: {maximum: 50}
  attachment :image, destroy: false
end