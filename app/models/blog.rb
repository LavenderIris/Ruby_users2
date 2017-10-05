class Blog < ActiveRecord::Base
	validates :name, :description, presence: true, length: {minimum: 2}
	has_many :posts
	has_many :owners

	# all the users that own a specifc blog
    has_many :users, through: :owners

    # all the users that posted on a specific blog
    has_many :user_posts, through: :posts, source: :user
end
