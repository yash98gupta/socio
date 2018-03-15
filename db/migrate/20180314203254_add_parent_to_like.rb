class AddParentToLike < ActiveRecord::Migration[5.1]
  def change
    add_column :likes, :parent_type, :string
    add_column :likes, :parent_id, :integer
  end
end
