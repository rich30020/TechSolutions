class CreateVisits < ActiveRecord::Migration[8.0]
  def change
    create_table :visits do |t|
      t.string :section
      t.integer :count

      t.timestamps
    end
  end
end
