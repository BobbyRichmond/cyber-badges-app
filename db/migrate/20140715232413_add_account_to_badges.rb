class AddAccountToBadges < ActiveRecord::Migration
  def change
    add_column :badges, :account_id, :integer
  end
end
