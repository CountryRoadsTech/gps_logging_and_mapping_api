class CreateRoutes < ActiveRecord::Migration[6.0]
  def change
    create_table :routes do |t|
      t.belongs_to :user, null: false, foreign_key: true
      t.text :name
      t.text :comment
      t.decimal :total_distance
      t.decimal :change_in_elevation

      t.timestamps
    end
  end
end
