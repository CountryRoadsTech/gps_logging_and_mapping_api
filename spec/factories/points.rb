# == Schema Information
#
# Table name: points
#
#  id                :bigint           not null, primary key
#  accuracy          :decimal(, )
#  altitude          :decimal(, )      not null
#  comment           :text
#  heading           :decimal(, )
#  latitude          :decimal(7, )     not null
#  longitude         :decimal(7, )     not null
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
FactoryBot.define do
  factory :point do
    user { nil }
    route { nil }
    name { "MyText" }
    comment { "MyText" }
    latitude { "9.99" }
    longitude { "9.99" }
    accuracy { "9.99" }
    altitude { "9.99" }
    speed { "9.99" }
    heading { "9.99" }
    recorded_at { "2021-01-20 12:48:49" }
    point_of_interest { false }
  end
end
