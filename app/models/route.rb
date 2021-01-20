# == Schema Information
#
# Table name: routes
#
#  id                  :bigint           not null, primary key
#  change_in_elevation :decimal(, )
#  comment             :text
#  name                :text
#  total_distance      :decimal(, )
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#  user_id             :bigint           not null
#
# Indexes
#
#  index_routes_on_user_id  (user_id)
#
# Foreign Keys
#
#  fk_rails_201da86ab7  (user_id => users.id)
#
class Route < ApplicationRecord
  belongs_to :user
end
