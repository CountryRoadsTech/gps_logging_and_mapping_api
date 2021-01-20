# == Schema Information
#
# Table name: routes
#
#  id                  :bigint           not null, primary key
#  change_in_elevation :decimal(, )
#  comment             :text
#  name                :text             not null
#  total_distance      :decimal(, )
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#  user_id             :bigint           not null
#
# Indexes
#
#  index_routes_on_name     (name)
#  index_routes_on_user_id  (user_id)
#
# Foreign Keys
#
#  fk_rails_201da86ab7  (user_id => users.id)
#
require 'rails_helper'

RSpec.describe Route, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
