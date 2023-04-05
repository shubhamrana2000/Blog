class AddPostimageurlToPosts < ActiveRecord::Migration[7.0]
  def change
    add_column :posts, :postimageurl, :string
  end
end
