class Pattern < ActiveRecord::Base
  belongs_to :company
  belongs_to :categories
end