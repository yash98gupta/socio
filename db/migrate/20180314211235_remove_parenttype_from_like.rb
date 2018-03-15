class RemoveParenttypeFromLike < ActiveRecord::Migration[5.1]
  def change
    remove_column :likes, :parent_type, :string
  end
end
