class Item < ApplicationRecord
  belongs_to :list

  validates :body, length: { minimum: 3 }, presence: true
  validates :list, presence: true
end
