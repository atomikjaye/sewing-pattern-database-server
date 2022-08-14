class Pattern < ActiveRecord::Base
  belongs_to :company
  has_many :pattern_categories
  has_many :pattern_fabrics
  has_many :categories, through: :pattern_categories
  has_many :fabrics, through: :pattern_fabrics
end