class Post < ApplicationRecord
	validates :title, presence: true, length:{minimum:20}
	validates :body, presence: true, length:{minimum:50}
	belongs_to :user
	has_many :comments,dependent: :destroy

	mount_uploader :postimage, PostimageUploader

end
