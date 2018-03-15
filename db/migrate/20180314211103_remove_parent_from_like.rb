class RemoveParentFromLike < ActiveRecord::Migration[5.1]
  def change
    remove_column :likes, :parent_id, :integer
  end
end
