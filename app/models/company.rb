class Company < ActiveRecord::Base
  has_many :categories
  has_many :patterns, through: :categories
  # has_many :patterns through: :categories
  # has_many :categories
end