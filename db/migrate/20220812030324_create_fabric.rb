class CreateFabric < ActiveRecord::Migration[6.1]
  def change
    create_table :fabrics do |t|
      t.string :name
      t.timestamps
  end
end
end
