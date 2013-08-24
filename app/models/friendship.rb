class Friendship < ActiveRecord::Base
  attr_accessible :friend_id, :user_id
  validates :friend_id, :user_id, presence: true

  belongs_to :user

  belongs_to(
    :friend,
    :class_name => "User",
    :foreign_key => "friend_id"
  )
end
