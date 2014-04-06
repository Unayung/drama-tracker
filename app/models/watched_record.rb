# == Schema Information
#
# Table name: watched_records
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  episode_id :integer
#  created_at :datetime
#  updated_at :datetime
#

class WatchedRecord < ActiveRecord::Base
  belongs_to :user
  belongs_to :episode
end
