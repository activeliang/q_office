class AddImageUrlToAbnormal < ActiveRecord::Migration[5.1]
  def change
    add_column :abnormals, :image_url, :string
  end
end
