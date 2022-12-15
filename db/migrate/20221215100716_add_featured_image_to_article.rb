class AddFeaturedImageToArticle < ActiveRecord::Migration[7.0]
  def change
    add_column :articles, :featured_image, :json
  end
end
