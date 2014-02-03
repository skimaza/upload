class AddTimeToLogs < ActiveRecord::Migration
  def change
    add_column :logs, :time, :string
  end
end
