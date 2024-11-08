class CreateMembers < ActiveRecord::Migration[8.0]
  def change
    create_table :members do |t|
      t.string :name
      t.string :membership_id
      t.string :contact_info
      t.boolean :membership_status

      t.timestamps
    end
  end
end
