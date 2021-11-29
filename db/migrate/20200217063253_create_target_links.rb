class CreateTargetLinks < ActiveRecord::Migration[5.2]
  def change
    create_table :target_links do |t|
      t.integer :link_id
      t.integer :target_id

      t.timestamps
    end
  end
end
