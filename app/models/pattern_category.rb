class PatternCategory < ActiveRecord::Base
  # has_many :categories
  belongs_to :pattern
  belongs_to :category
  # has_many :patterns through: :categories
  # has_many :categories
end