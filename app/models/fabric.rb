class Fabric < ActiveRecord::Base
  # has_many :patterns
  # belongs_to :company
  has_many :pattern_fabric
  has_many :patterns, through: :pattern_fabric
end