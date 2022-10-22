class Entity < ApplicationRecord
  belongs_to :user
  belongs_to :group
  validates :name, presence: true, length: { maximum: 50 }
  validates :amount, presence: true, numericality: { greater_than: 0 }
end
