class CreateStatuses < ActiveRecord::Migration[5.2]
  def change
    create_table :statuses do |t|
    	t.integer :singleton_guard
  		t.boolean :currently_up
    	t.timestamps

    end
    add_index(:statuses, :singleton_guard, :unique => true)
  end
end
