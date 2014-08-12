class CreateAccounts < ActiveRecord::Migration
  def change
    create_table :accounts do |t|
      t.boolean :admin, :default => false

      t.timestamps
    end
  end
end
