class CreatePoints < ActiveRecord::Migration[6.0]
  def change
    create_table :points do |t|
      t.belongs_to :user, null: false, foreign_key: true
      t.belongs_to :route, null: false, foreign_key: true
      t.text :name
      t.text :comment
      t.decimal :latitude
      t.decimal :longitude
      t.decimal :accuracy
      t.decimal :altitude
      t.decimal :speed
      t.decimal :heading
      t.datetime :recorded_at
      t.boolean :point_of_interest

      t.timestamps
    end
  end
end
