class Group < ApplicationRecord
  belongs_to :user
  has_many :entities, dependent: :destroy

  validates :name, presence: true, uniqueness: true
end
