class Category < ActiveRecord::Base
  has_many :patterns
  has_many :companies
end