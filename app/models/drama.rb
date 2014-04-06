# == Schema Information
#
# Table name: dramas
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  category_id :integer
#  description :string(255)
#  created_at  :datetime
#  updated_at  :datetime
#

class Drama < ActiveRecord::Base

  has_many :trackings
  has_many :episodes
  belongs_to :category

  validates_presence_of :name
end
