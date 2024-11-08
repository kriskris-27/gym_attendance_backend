class CreateSessions < ActiveRecord::Migration[8.0]
  def change
    create_table :sessions do |t|
      t.string :name
      t.datetime :date
      t.integer :duration
      t.string :session_type

      t.timestamps
    end
  end
end
