class PatternFabric < ActiveRecord::Base
  # has_many :categories
  belongs_to :pattern
  belongs_to :fabric
  # has_many :patterns through: :categories
  # has_many :categories
end