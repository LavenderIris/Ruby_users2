class Message < ActiveRecord::Base
  validates :author,  :message, presence: true, length: {minimum: 2}
  belongs_to :post
  belongs_to :user
end
