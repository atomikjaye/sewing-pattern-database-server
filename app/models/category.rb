class Category < ActiveRecord::Base
  # has_many :patterns
  # belongs_to :company
  has_many :pattern_categories
  has_many :patterns, through: :pattern_categories
end