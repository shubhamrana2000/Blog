class Post < ApplicationRecord
	validates :title, presence: true, length:{minimum:10,maximum:50}
	validates :body, presence: true, length:{minimum:10,maximum:5000}
	belongs_to :user
	has_many :comments,dependent: :destroy

	mount_uploader :postimage, PostimageUploader

end
