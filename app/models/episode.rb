# == Schema Information
#
# Table name: episodes
#
#  id          :integer          not null, primary key
#  drama_id    :integer
#  number      :integer
#  title       :string(255)
#  description :string(255)
#  play_date   :date
#  created_at  :datetime
#  updated_at  :datetime
#

class Episode < ActiveRecord::Base
  belongs_to :drama
  has_many :watched_records
  validates_presence_of :number, :title
end
