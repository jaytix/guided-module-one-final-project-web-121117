class CreateStationLine < ActiveRecord::Migration[5.0]
  def change
    create_table :station_lines do |t|
      t.string :line_name
      t.integer :train_id
      t.integer :station_id
    end
  end
end
