class AddImageColumnToPatterns < ActiveRecord::Migration[6.1]
  def change
    add_column :patterns, :image, :string
  end
end
