class CreatePatterns < ActiveRecord::Migration[6.1]
  def change
    create_table :patterns do |t|
      # t.integer :company_id
      t.integer :category_id
      t.string :pattern_code
      t.string :notions
      t.string :size
      t.integer :yardage
      t.string :fabrics
      t.string :extras
      t.timestamps
    end
  end
end
