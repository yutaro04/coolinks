class AddTargetToTargets < ActiveRecord::Migration[5.2]
  def change
    add_column :targets, :target, :string
  end
end
