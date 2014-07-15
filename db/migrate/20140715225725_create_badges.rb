class CreateBadges < ActiveRecord::Migration
  def change
    create_table :badges do |t|
      t.string :name
      t.text :description
      t.integer :internet_points

      t.timestamps
    end
  end
end
