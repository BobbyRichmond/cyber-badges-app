class CreateBadgesTemplates < ActiveRecord::Migration
  def change
    create_table :badges_templates do |t|
      t.string :name
      t.text :description
      t.integer :internet_points

      t.timestamps
    end
  end
end
