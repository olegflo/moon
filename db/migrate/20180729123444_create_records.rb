class CreateRecords < ActiveRecord::Migration[5.1]
  def change
    create_table :records do |t|
      t.string :name
      t.string :ref

      t.timestamps
    end
  end
end
