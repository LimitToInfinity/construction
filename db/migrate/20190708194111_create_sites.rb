class CreateSites < ActiveRecord::Migration[5.2]
  def change
    create_table :sites do |t|
      t.string :location
      t.boolean :hazardous

      t.timestamps
    end
  end
end
