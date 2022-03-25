class Instrument < ApplicationRecord
  before_destroy :not_referenced_by_any_line_item
  belongs_to :user, optional: true
  has_many :line_items
  mount_uploader :image, ImageUploader
  serialize :image, JSON

  validates :title, :brand, :price, :model, presence: true
  validates :description, length: { maximum: 1000 }
  validates :title, length: { maximum: 140 }
  validates :price, length: { maximum: 7 }

  BRAND = %w[Fender Gibson Epiphone ESP Martin Dean Taylor Jackson PRS Ibanez Charvel Washburn].freeze
  FINISH = %w[Black White Navy Blue Red Clear Satin Yellow Seafoam].freeze
  CONDITION = %w[New Excellent Mint Used Fair Poor].freeze

  def not_refereced_by_any_line_item
    return unless line_items.empty?

    errors.add(:base, 'Line items present')
    throw :abort
  end
end
