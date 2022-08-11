class Pattern < ActiveRecord::Base
  belongs_to :compan
  has_many :categories
end