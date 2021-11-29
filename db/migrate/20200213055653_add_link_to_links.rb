class AddLinkToLinks < ActiveRecord::Migration[5.2]
  def change
    add_column :links, :url, :string
    add_column :links, :text, :string
  end
end
