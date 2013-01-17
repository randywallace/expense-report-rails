class AddHourlypayToEmployer < ActiveRecord::Migration
  def change
    add_column :employers, :hourly_rate, :float
  end
end
