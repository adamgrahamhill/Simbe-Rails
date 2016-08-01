class AddSelectedToBlogPosts < ActiveRecord::Migration[5.0]
  def change
    add_column :blog_posts, :selected, :boolean
  end
end
