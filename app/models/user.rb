# frozen_string_literal: true
# rubocop:disable all

class User < ApplicationRecord
  has_secure_password
  # has_many :posts

  has_many :friendships
  has_many :inverse_friendships, class_name: 'Friendship', foreign_key: 'friend_id'
  validates :name, presence: true
  validates :email, presence: true
  validates :password, presence: true

  def friends
    friends_array = friendships.map { |friendship| friendship.friend if friendship.confirmed }
    friends_array + inverse_friendships.map { |friendship| friendship.user if friendship.confirmed }
    friends_array.compact
  end

  def friend?(user)
    friends.include?(user)
  end
end
