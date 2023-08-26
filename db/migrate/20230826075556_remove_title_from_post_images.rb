class RemoveTitleFromPostImages < ActiveRecord::Migration[6.1]
  def change
    remove_column :post_images, :title, :string
  end
end
