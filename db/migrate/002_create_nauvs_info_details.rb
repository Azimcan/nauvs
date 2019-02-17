class CreateNauvsInfoDetails < ActiveRecord::Migration[5.2]
  def change
    create_table :nauvs_info_details do |t|
      t.belongs_to :nauvs_info, foreign_key: true
      t.string :prop_key
      t.string :old_value
      t.string :value
    end
  end
end
