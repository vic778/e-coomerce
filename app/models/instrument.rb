class Instrument < ApplicationRecord
  belongs_to :user, optional: true
  has_many :line_items
  mount_uploader :image, ImageUploader

  validates :title, :brand, :price, :model, presence: true
  validates :description, length: { maximum: 1000 }
  validates :title, length: { maximum: 140 }
  validates :price, length: { maximum: 7 }

  BRAND = %w[Fender Gibson Epiphone ESP Martin Dean Taylor Jackson PRS Ibanez Charvel Washburn].freeze
  FINISH = %w[Black White Navy Blue Red Clear Satin Yellow Seafoam].freeze
  CONDITION = %w[New Excellent Mint Used Fair Poor].freeze

end
