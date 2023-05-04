class AddPostsCountToAuthor < ActiveRecord::Migration[7.0]
  def change
    add_column :authors, :posts_count, :integer
  end
end
