class CreateTimecharts < ActiveRecord::Migration
  def change
    create_table :timecharts do |t|
      t.references :employer
      t.datetime :start_time
      t.datetime :stop_time
      t.string :description

      t.timestamps
    end
    add_index :timecharts, :employer_id
  end
end
