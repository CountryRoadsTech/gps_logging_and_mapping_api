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
class Point < ApplicationRecord
  belongs_to :user, inverse_of: :points
  belongs_to :route, inverse_of: :points

  validates :user, :altitude, :latitude, :longitude, :recorded_at, presence: true
  validates :latitude_is_a_real_coordinate_on_earth, :longitude_is_a_real_coordinate_on_earth
  validates :point_of_interest, inclusion: { in: [true, false] }

  def latitude_is_a_real_coordinate_on_earth
    if latitude.present?
      if latitude < -90.0
        errors.add(:latitude, 'must be greater than or equal to -90')
      elsif latitude > 90.0
        errors.add(:latitude, 'must be less than or equal to 90')
      end
    end
  end

  def longitude_is_a_real_coordinate_on_earth
    if longitude.present?
      if longitude < -180.0
        errors.add(:longitude, 'must be greater than or equal to -180')
      elsif longitude > 180.0
        errors.add(:longitude, 'must be less than or equal to 180')
      end
    end
  end

end
