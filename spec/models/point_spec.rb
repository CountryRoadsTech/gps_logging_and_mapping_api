# == Schema Information
#
# Table name: points
#
#  id                :bigint           not null, primary key
#  accuracy          :decimal(, )
#  altitude          :decimal(, )      not null
#  comment           :text
#  heading           :decimal(, )
#  latitude          :decimal(6, )     not null
#  longitude         :decimal(6, )     not null
#  name              :text
#  point_of_interest :boolean          default(FALSE), not null
#  recorded_at       :datetime         not null
#  speed             :decimal(, )
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#  route_id          :bigint           not null
#  user_id           :bigint           not null
#
# Indexes
#
#  index_points_on_route_id  (route_id)
#  index_points_on_user_id   (user_id)
#
# Foreign Keys
#
#  fk_rails_14fad54ae5  (route_id => routes.id)
#  fk_rails_206a3ea05e  (user_id => users.id)
#
require 'rails_helper'

RSpec.describe Point, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
