class User < ActiveRecord::Base
	validates :first_name, :last_name,  :email, presence: true, length: {in: 2..30}
	has_many :owners
	has_many :posts
	has_many :messages

	# all the blogs owned by a specific user
  	has_many :blogs, through: :owners

  	# all the blogs a user has posted on
  	has_many :blog_posts, through: :posts, source: :blog
end
