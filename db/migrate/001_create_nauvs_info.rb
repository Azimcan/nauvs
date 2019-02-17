class CreateNauvsInfo < ActiveRecord::Migration[5.2]
  def change
    create_table :nauvs_info do |t|
      t.belongs_to :issue, foreign_key: true
      t.belongs_to :user, foreign_key: true
    end
  end
end
