class CreateEmployers < ActiveRecord::Migration
  def change
    create_table :employers do |t|
      t.text :name
      t.date :date_started
      t.boolean :currently_employed

      t.timestamps
    end
  end
end
