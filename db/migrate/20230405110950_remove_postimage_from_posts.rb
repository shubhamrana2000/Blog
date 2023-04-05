class RemovePostimageFromPosts < ActiveRecord::Migration[7.0]
  def change
    remove_column :posts, :postimage, :string
  end
end
