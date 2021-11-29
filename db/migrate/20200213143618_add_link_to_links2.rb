class AddLinkToLinks2 < ActiveRecord::Migration[5.2]
  def change
    add_column :links, :tag_id, :integer
  end
end
