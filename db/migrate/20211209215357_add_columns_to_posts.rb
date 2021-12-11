class AddColumnsToPosts < ActiveRecord::Migration[6.1]
  def change
    add_column :posts, :shop_name, :string
    add_column :posts, :menu , :string
  end
end
