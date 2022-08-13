class CreatePatternFabricJoin < ActiveRecord::Migration[6.1]
  def change
    create_table :pattern_fabrics do |t|
      t.integer :pattern_id
      t.integer :fabric_id
    end
  end
end