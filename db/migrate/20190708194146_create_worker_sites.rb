class CreateWorkerSites < ActiveRecord::Migration[5.2]
  def change
    create_table :worker_sites do |t|
      t.references :worker, foreign_key: true
      t.references :site, foreign_key: true

      t.timestamps
    end
  end
end
