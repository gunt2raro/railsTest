class CreateSessions < ActiveRecord::Migration
  def change
    create_table :sessions do |t|
      t.string :name
      t.string :password
      t.boolean :status

      t.timestamps
    end
  end
end
