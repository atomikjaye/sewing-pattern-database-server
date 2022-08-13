class Pattern < ActiveRecord::Base
  belongs_to :company
  has_many :pattern_categories
  has_many :categories, through: :pattern_categories
end