class CreatePoints < ActiveRecord::Migration[6.0]
  def change
    create_table :points do |t|
      t.belongs_to :user, null: false, foreign_key: true
      t.belongs_to :route, null: false, foreign_key: true
      t.text :name
      t.text :comment
      t.decimal :latitude, precision: 6, null: false
      t.check_constraint "latitude <= 90", name: "latitude_max_check"
      t.check_constraint "latitude >= -90", name: "latitude_min_check"
      t.decimal :longitude, precision: 6, null: false
      t.check_constraint "longitude <= 180", name:"longitude_max_check"
      t.check_constraint "longitude >= -180", name: "longitude_min_check"
      t.decimal :accuracy
      t.decimal :altitude, null: false
      t.decimal :speed
      t.decimal :heading
      t.datetime :recorded_at, null: false
      t.boolean :point_of_interest, null: false, default: false

      t.timestamps
    end
  end
end
