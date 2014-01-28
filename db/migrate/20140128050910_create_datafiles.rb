class CreateDatafiles < ActiveRecord::Migration
  def change
    create_table :datafiles do |t|
      t.string :name
      t.string :directory
      t.string :path

      t.timestamps
    end
  end
end
