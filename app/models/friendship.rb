# frozen_string_literal: true
# rubocop:disable all

class Friendship < ActiveRecord::Base
  belongs_to :user
  belongs_to :friend, :class_name => 'User'
end
