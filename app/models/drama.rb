# == Schema Information
#
# Table name: dramas
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  description :string(255)
#  created_at  :datetime
#  updated_at  :datetime
#

class Drama < ActiveRecord::Base

  has_many :trackings
end
