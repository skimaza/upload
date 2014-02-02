class CreateLogs < ActiveRecord::Migration
  def change
    create_table :logs do |t|
      t.string :ip
      t.string :message

      t.timestamps
    end
    add_index :logs, :ip
  end
end
