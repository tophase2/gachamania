class AddTitleToPostImages < ActiveRecord::Migration[6.1]
  def change
    add_column :post_images, :title, :string
  end
end
